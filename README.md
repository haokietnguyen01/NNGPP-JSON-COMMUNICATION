VERSION=4.8

sudo docker build -t request:${VERSION} -f ./dockerfiles/Dockerfile.prod.x86_aarch64 . 

docker run -d -it -u root --network=host --name=request-${VERSION} --mount type=bind,source=${PWD},target=/app request:${VERSION} bash

docker exec -it request-${VERSION} bash