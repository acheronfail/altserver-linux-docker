## What is this?

This repository contains a Dockerfile for building https://github.com/NyaMisty/AltServer-Linux in an image.

## Usage

To build the image:

```bash
git clone https://github.com/acheronfail/altserver-linux-docker
cd altserver-linux-docker

docker build -t altserver-linux .
```

To use the image:

```bash
docker run -ti --network host altserver-linux Altserver -h
```

