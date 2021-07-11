# Packer "Hello, World" Example

This folder contains the simplest possible Packer template—one that builds a Docker image with a text file that says
"Hello, World"! 

## Building the Packer template

1. Install [Packer](https://www.packer.io/) and make sure it's on your `PATH`.
1. Install [Docker](https://www.docker.com/) and make sure it's on your `PATH`.
1. Run `packer build build.json`.
1. Run `docker run -it --rm gruntwork/packer-hello-world-example cat /test.txt`.
1. You should see the text "Hello, World!"