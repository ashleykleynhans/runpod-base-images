# Docker base images for RunPod templates

## Target Images

### Python 3.10

#### py310-cu121-torch212

- Ubuntu 22.04 LTS
- CUDA 12.1
- Python 3.10.12
- Torch 2.1.2
- xformers 0.0.23.post1

#### py310-cu121-torch222

- Ubuntu 22.04 LTS
- CUDA 12.1
- Python 3.10.12
- Torch 2.2.2
- xformers 0.0.25.post1

#### py310-cu121-torch231

- Ubuntu 22.04 LTS
- CUDA 12.1
- Python 3.10.12
- Torch 2.3.1
- xformers 0.0.27

#### py310-cu121-torch240

- Ubuntu 22.04 LTS
- CUDA 12.1
- Python 3.10.12
- Torch 2.4.0
- xformers 0.0.27.post2

### Python 3.11

#### py311-cu121-torch222

- Ubuntu 22.04 LTS
- CUDA 12.1
- Python 3.11.9
- Torch 2.2.2
- xformers 0.0.25.post1

#### py311-cu121-torch231

- Ubuntu 22.04 LTS
- CUDA 12.1
- Python 3.11.9
- Torch 2.3.1
- xformers 0.0.27

#### py311-cu121-torch240

- Ubuntu 22.04 LTS
- CUDA 12.1
- Python 3.11.9
- Torch 2.4.0
- xformers 0.0.27.post2

## Pre-installed applications

* [Jupyter Lab](https://github.com/jupyterlab/jupyterlab)
* [code-server](https://github.com/coder/code-server)
* [runpodctl](https://github.com/runpod/runpodctl)
* [OhMyRunPod](https://github.com/kodxana/OhMyRunPod)
* [RunPod File Uploader](https://github.com/kodxana/RunPod-FilleUploader)
* [croc](https://github.com/schollz/croc)
* [rclone](https://rclone.org/)

## Building the Docker image

> [!NOTE]
> You will need to edit the `docker-bake.hcl` file and update `REGISTRY_USER`,
> and `RELEASE`.  You can obviously edit the other values too, but these
> are the most important ones.

```bash
# Clone the repo
git clone https://github.com/ashleykleynhans/runpod-base-images.git

# Log in to Docker Hub
docker login

# Build the image, tag the image, and push the image to Docker Hub
docker buildx bake -f docker-bake.hcl --push

# Build a specific target for a different user, registry and release version
REGISTRY=ghcr.io REGISTRY_USER=my_gh_user RELEASE=x.y.z docker buildx bake \
    -f docker-bake.hcl --push cu118-torch212
```

## Acknowledgements

A special word of thanks to [Madiator2011](https://github.com/kodxana) for advise
and suggestions on improving these images, as well as all of the code for the
code-server which was borrowed from his [madiator-docker-runpod](
https://github.com/kodxana/madiator-docker-runpod) GitHub repository.

## Community and Contributing

Pull requests and issues on [GitHub](https://github.com/ashleykleynhans/runpod-base-images)
are welcome. Bug fixes and new features are encouraged.

## Appreciate my work?

<a href="https://www.buymeacoffee.com/ashleyk" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
