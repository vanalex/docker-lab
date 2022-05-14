# Docker "Hello, World" Example

This folder contains a `Dockerfile` to build a very simple Docker image—one which contains a text file with the
text "Hello, World"!—to demonstrate how you can use Terratest to write automated tests for your Docker images. 

## Building the Docker container

1. Install [Docker](https://www.docker.com/) and make sure it's on your `PATH`.
1. Run `docker build -t gruntwork/docker-hello-world-example .`.
1. Run `docker run -it --rm gruntwork/docker-hello-world-example cat /test.txt`.
1. You should see the text "Hello, World!"
