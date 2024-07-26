variable "REGISTRY" {
    default = "docker.io"
}

variable "REGISTRY_USER" {
    default = "ashleykza"
}

variable "RELEASE" {
    default = "2.1.1"
}

variable "RUNPODCTL_VERSION" {
    default = "v1.14.3"
}

group "default" {
    targets = [
        "py310-cu121-torch212",
        "py310-cu121-torch222",
        "py310-cu121-torch231",
        "py310-cu121-torch240",

        "py311-cu121-torch222",
        "py311-cu121-torch231",
        "py311-cu121-torch240"
    ]
}

target "py310-cu121-torch212" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.10-cuda12.1.1-torch2.1.2"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION = "3.10"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.1.2+cu121"
        XFORMERS_VERSION = "0.0.23.post1"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py310-cu121-torch222" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.10-cuda12.1.1-torch2.2.2"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION = "3.10"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.2.2+cu121"
        XFORMERS_VERSION = "0.0.25.post1"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py310-cu121-torch231" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.10-cuda12.1.1-torch2.3.1"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION = "3.10"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.3.1+cu121"
        XFORMERS_VERSION = "0.0.27"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py310-cu121-torch240" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.10-cuda12.1.1-torch2.4.0"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION = "3.10"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.4.0+cu121"
        XFORMERS_VERSION = "0.0.27.post2"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py311-cu121-torch222" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.11-cuda12.1.1-torch2.2.2"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION = "3.11"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.2.2+cu121"
        XFORMERS_VERSION = "0.0.25.post1"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py311-cu121-torch231" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.11-cuda12.1.1-torch2.3.1"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION = "3.11"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.3.1+cu121"
        XFORMERS_VERSION = "0.0.27"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py311-cu121-torch240" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.11-cuda12.1.1-torch2.4.0"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION = "3.11"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.4.0+cu121"
        XFORMERS_VERSION = "0.0.27.post2"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}
