docker network ls

docker network prune

docker run -d -it --name ubuntu1 bash

docker run -d -it --name ubuntu2 bash

docker network inspect bridge

docker attach ubuntu1

docker network create --driver bridge my_network_test

docker run -dit --name ubuntu1 --network my_network_test bash

docker run -dit --name ubuntu2 --network my_network_test bash
