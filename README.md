# jupyter-docker

Running container (having e.g. `./notebooks` to serve notebooks from):

1. Build an image:
```
docker build -t jupyter-docker .
```
2. Create folder `notebooks` in the current directory
3. Start docker:
```
docker run --rm -p 8899:8899 -it -v $(pwd)/notebooks:/app/home jupyter-docker
```
3a. Alternatively image could be downloaded from DockerHub:
```
docker run --rm -p 8899:8899 -it -v $(pwd)/notebooks:/app/home fiva/jupyter-docker
```

**Note**: if folder (`./notebooks`) does not exist when docker container is started, then it will be created by the docker deamon and will have wrong owner. This is the most likely reason of having an error `Permission denied: Untitled.ipynb` on creation of new notebook.


**Note**: inside the user folder (`./notebooks`) a virtualenv will be created and activated (`./notebooks/env`). Thus any packages that user installs (on top of those that are shipped with the container) will be preserved upon a container restart. In order to install a package run `!pip3 install ...` inside the cell.
