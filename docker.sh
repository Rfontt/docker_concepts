docker volume create my_volume

docker volume inspect my_volume

docker run -d --name nginx -p 8080:8080 --mount type=volume,source=my_volume,target=/app nginx

docker run -d --name ngnix3 -p 8090:8080 -v my_volume:/app nginx