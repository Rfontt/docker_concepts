# Network

We need to make containers communicate with each other.
So, to that we need to create a network.

- Bridge(default) => A bridge network uses a software bridge which allows containers connected to the same bridge network to communicate, while providing isolation from containers which are not connected to that bridge network.

To know more about it: https://docs.docker.com/network/bridge/

- host =>  If you use the host network mode for a container, that container’s network stack is not isolated from the Docker host (the container shares the host’s networking namespace), and the container does not get its own IP-address allocated. For instance, if you run a container which binds to port 80 and you use host networking, the container’s application is available on port 80 on the host’s IP address.

To know more about it: https://docs.docker.com/network/host/

- overlay
- maclan
- none