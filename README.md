# jupyter-docker

Running container (having e.g. `./notebooks` to serve notebooks from):

1. Create folder `notebooks` in the current directory
2. Start docker:
```
docker run --rm -p 8899:8899 -it -v $(pwd)/notebooks:/app/home jupyter-docker
```

Note, if folder (`./notebooks`) does not exist when docker container is started, then it will be created by the docker deamon and will have wrong owner. This is the most likely reason of having an error `Permission denied: Untitled.ipynb` on creation of new notebook.
