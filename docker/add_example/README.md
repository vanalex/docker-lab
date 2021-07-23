### Create an image with ADD instruction

#### Build Docker Image

```bash
docker build -t vanalex/alpine-add . -f <name of dockerfile>
```
#### Tagging the image

```bash
docker tag vanalex/alpine-add vanalex/labs-add:v1.0
```

#### Create a container
```bash
docker run -itd vanalex/labs-add:v1.0 /bin/sh
```