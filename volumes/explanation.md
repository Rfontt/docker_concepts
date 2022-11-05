# Bind mounts

We use bind mounts to share files/folders that have changed in docker container with our personal computer.

Ex:

```
docker run -d --name nginx -p 8080:8080 -v ~/Projects/fullcycle2/docker/html/:/usr/share/ngnix/html ngnix 
```

> Here I am sharing a folder from my computer to a folder in the container.

```
docker run -d --name nginx -p 8080:8080 --mount type=bind,source="$(pwd)"/html,target=/usr/share/ngnix/html ngnix
```

### Commands

> List all volumes

```
docker volume ls
```

> Create a volume

```
docker volume create my_volume
```

> Inspect a volume

```
docker volume inspect my_volume
```

> Delete all volume

```
docker volume rm $(docker volume ls -q)
```

> After creating a volume, you can do a bind of this volume to a container.

```
docker run -d --name nginx -p 8080:8080 --mount type=volume,source=my_volume,target=/app nginx
```

or

```
docker run -d --name ngnix3 -p 8090:8080 -v my_volume:/app nginx
```

> Delete all containers that are not used.

```
docker volume prune
```