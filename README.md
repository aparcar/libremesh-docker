# LibreMesh Docker

This is a x86/64 Docker image for testing and developing.

Available tags:

* `stable` using `17.06` branch of `lime-packages` based on LEDE 17.04.4
* `latest` using `develop` branch of `lime-packages` based on OpenWrt snapshots.

## Use image

To dive into the image run the following command:

```bash
docker run --name libretest aparcar/libremesh:latest
docker exec -it libretest sh
```

Some stuff may fail, please report by creating an issue!

## Build image

Modify the content of the archives `latest.tar.gz` or `stable.tar.gz` and
build it with the following command

```bash
TAG=latest # or stable
docker build -t "libremesh:$TAG" --build-arg "TAG=$TAG" .
```

To run the self build package run 

```bash
docker run -d --name libretest libremesh:$TAG
docker exec -it libretest sh
```
