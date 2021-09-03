# Overleaf-full
Docker container images of overleaf selfhosted community version with `full-scheme TexLive`

## Installation
The image is available for the following Archs

- Amd64
- Arm64
- arm/v7 (for raspberry pi geeks)

### Overleaf Toolkit

Ideally, you would use the [Overleaf Toolkit](https://github.com/overleaf/toolkit) as described [here](https://github.com/overleaf/toolkit/blob/master/doc/configuration.md#the-docker-composeoverrideyml-file) with a [docker-compose.override.yaml](./docker-compose.override.yaml). Example:
``` yaml
services:
    sharelatex:
        image: melashri/overleaf
```

### Docker Compose

Alternatively, use the [docker-compose.yaml](https://github.com/overleaf/overleaf/blob/master/docker-compose.yml) provided in the [official GitHub](https://github.com/overleaf/overleaf), but change the image to ``melashri/overleaf``.


## Build 

To build and use your own image you can do the following: 

1. Clone the repository 'git clone https://github.com/MohamedElashri/Overleaf-full
2. Build the container
    - `docker build -t overleaf .`
3. Optionally, you can just build the container directly from GitHub with the following command:
    - `docker build https://github.com/MohamedElashri/Overleaf-full.git -t overleaf:latest`


But to run the container providing the path to the LaTeX project directory to generate the output files

1. Clone the repository 'git clone https://github.com/MohamedElashri/Overleaf-full`
2. `cd` into the repository
3. Build the container
    - `docker build -t overleaf .`
4. Optionally, you can just build the container directly from GitHub with the following command:
    - `docker build https://github.com/MohamedElashri/Overleaf-full.git -t overleaf:latest`
5. Wait for the image to be built. It may take a while as all CTAN packages are downloaded and installed.
6. Run the container with:
    - `docker run --rm -i --net=none -v /path/to/project:/data --name latex-full-builder overleaf latexmk -cd -f -interaction=batchmode -pdf in.tex`
7. The output files will be found in the project directory.

## License 

Available under [the MIT license](https://github.com/MohamedElashri/Overleaf-full/blob/Main/LICENSE.md).





