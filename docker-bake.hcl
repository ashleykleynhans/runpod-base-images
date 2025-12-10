variable "REGISTRY" {
    default = "docker.io"
}

variable "REGISTRY_USER" {
    default = "ashleykza"
}

variable "RELEASE" {
    default = "2.4.11"
}

variable "RUNPODCTL_VERSION" {
    default = "v1.14.15"
}

group "default" {
    targets = [
        "py311-cu124-torch260",
        "py312-cu124-torch260",

        "py311-cu128-torch291",
        "py312-cu128-torch291"
    ]
}

group "all" {
    targets = [
        "py310-cu121-torch212",
        "py310-cu121-torch222",
        "py310-cu121-torch231",
        "py310-cu124-torch260",

        "py311-cu124-torch260",
        "py311-cu128-torch270",
        "py311-cu128-torch271",
        "py311-cu128-torch280",
        "py311-cu128-torch291",

        "py312-cu124-torch260",
        "py312-cu128-torch270",
        "py312-cu128-torch271",
        "py312-cu128-torch280",
        "py312-cu128-torch291"
    ]
}

target "py310-cu121-torch212" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.10-cuda12.1.1-torch2.1.2"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION        = "3.10"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION         = "2.1.2+cu121"
        XFORMERS_VERSION      = "0.0.23.post1"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py310-cu121-torch222" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.10-cuda12.1.1-torch2.2.2"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION        = "3.10"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION         = "2.2.2+cu121"
        XFORMERS_VERSION      = "0.0.25.post1"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py310-cu121-torch231" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.10-cuda12.1.1-torch2.3.1"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        PYTHON_VERSION        = "3.10"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION         = "2.3.1+cu121"
        XFORMERS_VERSION      = "0.0.27"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py310-cu124-torch260" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.10-cuda12.4.1-torch2.6.0"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.4"
        PYTHON_VERSION        = "3.10"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu124"
        TORCH_VERSION         = "2.6.0+cu124"
        XFORMERS_VERSION      = "0.0.29.post3"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py311-cu124-torch260" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.11-cuda12.4.1-torch2.6.0"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.4"
        PYTHON_VERSION        = "3.11"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu124"
        TORCH_VERSION         = "2.6.0+cu124"
        XFORMERS_VERSION      = "0.0.29.post3"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py311-cu128-torch270" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.11-cuda12.8.1-torch2.7.0"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.8"
        PYTHON_VERSION        = "3.11"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu128"
        TORCH_VERSION         = "2.7.0+cu128"
        XFORMERS_VERSION      = "0.0.30"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py311-cu128-torch271" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.11-cuda12.8.1-torch2.7.1"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.8"
        PYTHON_VERSION        = "3.11"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu128"
        TORCH_VERSION         = "2.7.1+cu128"
        XFORMERS_VERSION      = "0.0.31"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py311-cu128-torch280" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.11-cuda12.8.1-torch2.8.0"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.8"
        PYTHON_VERSION        = "3.11"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu128"
        TORCH_VERSION         = "2.8.0+cu128"
        XFORMERS_VERSION      = "0.0.32.post2"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py311-cu128-torch291" {
    dockerfile = "./dockerfiles/without-xformers/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.11-cuda12.8.1-torch2.9.1"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.8"
        PYTHON_VERSION        = "3.11"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu128"
        TORCH_VERSION         = "2.9.1+cu128"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py312-cu124-torch260" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.12-cuda12.4.1-torch2.6.0"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.4"
        PYTHON_VERSION        = "3.12"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu124"
        TORCH_VERSION         = "2.6.0+cu124"
        XFORMERS_VERSION      = "0.0.29.post3"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py312-cu128-torch270" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.12-cuda12.8.1-torch2.7.0"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.8"
        PYTHON_VERSION        = "3.12"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu128"
        TORCH_VERSION         = "2.7.0+cu128"
        XFORMERS_VERSION      = "0.0.30"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py312-cu128-torch271" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.12-cuda12.8.1-torch2.7.1"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.8"
        PYTHON_VERSION        = "3.12"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu128"
        TORCH_VERSION         = "2.7.1+cu128"
        XFORMERS_VERSION      = "0.0.31"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py312-cu128-torch280" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.12-cuda12.8.1-torch2.8.0"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.8"
        PYTHON_VERSION        = "3.12"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu128"
        TORCH_VERSION         = "2.8.0+cu128"
        XFORMERS_VERSION      = "0.0.32.post2"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "py312-cu128-torch291" {
    dockerfile = "./dockerfiles/without-xformers/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-python3.12-cuda12.8.1-torch2.9.1"]
    args = {
        BASE_IMAGE            = "nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.8"
        PYTHON_VERSION        = "3.12"
        RELEASE               = "${RELEASE}"
        INDEX_URL             = "https://download.pytorch.org/whl/cu128"
        TORCH_VERSION         = "2.9.1+cu128"
        RUNPODCTL_VERSION     = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}
