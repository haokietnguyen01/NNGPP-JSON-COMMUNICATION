#include "rapidjson/document.h"
#include <chrono>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <nngpp/nngpp.h>
#include <nngpp/protocol/rep0.h>
#include <nngpp/protocol/req0.h>

#define CLIENT "client"
#define SERVER "server"
#define DATECMD 1

void server(const char *url) {
  auto sock = nng::rep::open();
  sock.listen(url);
  while (true) {
    auto buf = sock.recv();
    if (buf.size() > 0) {
      printf("SERVER: RECEIVED MESSAGE: %s\n", buf.data<char>());
    }
  }
}

void client(const char *url) {
  std::string jsonContent;
  std::string successJsonPath = "../success.json";
  std::string failJsonPath = "../failed.json";
  auto sock = nng::req::open();

  try {
    sock.dial(url);
  } catch (const nng::exception &e) {
    std::cerr << "Error: Failed to connect to URL: " << e.what() << std::endl;
    // Đọc nội dung từ tệp failed.json
    std::ifstream fileJsonFail(failJsonPath, std::ios_base::in);
    jsonContent.assign((std::istreambuf_iterator<char>(fileJsonFail)),
                       (std::istreambuf_iterator<char>()));
    fileJsonFail.close();
    std::cout << jsonContent << std::endl;
    return; // Thoát khỏi hàm sau khi xử lý lỗi
  }
  auto msg = nng::make_msg(0);

  std::ifstream fileJson(successJsonPath, std::ios_base::in);

  // Đọc nội dung của tệp vào chuỗi jsonContent
  jsonContent.assign((std::istreambuf_iterator<char>(fileJson)),
                     (std::istreambuf_iterator<char>()));
  // Gửi nội dung JSON tới server
  msg.body().append(nng::view(jsonContent.c_str(), jsonContent.length()));
  sock.send(std::move(msg));
  fileJson.close(); // Đóng tệp sau khi đọc
}

int main(int argc, char **argv) try {
  if (argc > 1 && strcmp(CLIENT, argv[1]) == 0) {
    if (argc < 3) {
      fprintf(stderr, "Usage: %s %s <URL> <MESSAGE>\n", argv[0], CLIENT);
      return 1;
    }
    client(argv[2]);
    return 0;
  }

  if (argc > 1 && strcmp(SERVER, argv[1]) == 0) {
    server(argv[2]);
    return 0;
  }

  fprintf(stderr, "Usage: %s %s|%s <URL> ...\n", argv[0], CLIENT, SERVER);
  return 1;
} catch (const nng::exception &e) {
  fprintf(stderr, "%s: %s\n", e.who(), e.what());
  return 1;
}