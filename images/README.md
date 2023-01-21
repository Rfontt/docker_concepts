# Images

We can create images using a file called ```Dockerfile```.

## Dockerfile

- First, we need to define the images name and images version. To that, we'll use the **FROM** command.

```yml
FROM image_name:version
```

- The **WORKDIR** is the main container folder for us. All commands after it will be executed in this folder.

```yml
WORKDIR /app
```

- To run linux commands we'll use the **RUN** command.

```yml
RUN apt-get update && apt-get install -y
```

- To COPY archives to other folder, we need to use the **COPY** command.

```yml
COPY volumes /usr/share/nginx
```

## Commands explanations

- CMD

It's used to execute commands (to run the application, for example). But it can be replaced when we run the container through the terminal.

> This is our command.

```yml
CMD ["echo", "hello world"]
```

> This will replace our command when we run container through the terminal.

```sh
docker run --rm test:test echo "oi"
```

- ENTRYPOINT

It's used in the same way as CMD, but it cannot be replaced when we run a docker command through the terminal.

```yml
ENTRYPOINT ["echo", "hello world"]
```