# docker-node-test

This is an example Node.js application to test the use of Docker.

## How to Use

Create a Docker image and name it **jwaghetti/docker-node-test:0.0.1**:
```
$ docker build -t jwaghetti/docker-node-test:0.0.1 .
```

Create a Docker container with name **docker-node-test** based on the recently
created image, binding host port 80 to container port 8080:

```
$ docker run -d --name docker-node-test  jwaghetti/docker-node-test:0.0.1
```

Open a browser and check if **"Hello World"** message appears
on **localhost:80**.

## Other Useful Docker Commands
Considering the container is tagged as **docker-node-test**.

- **Stop a container**:
``$ docker stop docker-node-test``
- **Start a container**: 
``$ docker start docker-node-test``
- **Remove a container**:
``$ docker rm docker-node-test``
(given an ID, it can remove a container or an image)
- **View logs of a container**:
``$ docker logs docker-node-test``
- **List all images**:
``$ docker images``
- **List all containers**:
``$ docker ps -a``
(without the -a flag, lists only the running containers)
