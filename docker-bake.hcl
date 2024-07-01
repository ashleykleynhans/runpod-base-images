variable "REGISTRY" {
    default = "docker.io"
}

variable "REGISTRY_USER" {
    default = "ashleykza"
}

variable "RELEASE" {
    default = "1.7.0"
}

variable "RUNPODCTL_VERSION" {
    default = "v1.14.3"
}

group "default" {
    targets = [
        "cu118-torch200",
# TODO: Remove these eventually if no longer needed
#        "cu118-torch212",
#        "cu118-torch222",
#        "cu118-torch230",
        "cu121-torch212",
        "cu121-torch221",
        "cu121-torch222",
        "cu121-torch230"
# TODO: Add back when xformers supports it
#        "cu121-torch231"
    ]
}

target "cu118-torch200" {
    dockerfile = "./dockerfiles/with-xformers-std/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-cuda11.8.0-torch2.0.0"]
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "11.8"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu118"
        TORCH_VERSION = "2.0.0+cu118"
        XFORMERS_VERSION = "0.0.19"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "cu118-torch212" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-cuda11.8.0-torch2.1.2"]
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "11.8"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu118"
        TORCH_VERSION = "2.1.2+cu118"
        XFORMERS_VERSION = "0.0.23.post1+cu118"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "cu118-torch222" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-cuda11.8.0-torch2.2.2"]
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "11.8"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu118"
        TORCH_VERSION = "2.2.2+cu118"
        XFORMERS_VERSION = "0.0.25.post1+cu118"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "cu118-torch230" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-cuda11.8.0-torch2.3.0"]
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "11.8"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu118"
        TORCH_VERSION = "2.3.0+cu118"
        XFORMERS_VERSION = "0.0.26.post1+cu118"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "cu121-torch212" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-cuda12.1.1-torch2.1.2"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.1.2+cu121"
        XFORMERS_VERSION = "0.0.23.post1+cu121"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "cu121-torch221" {
    dockerfile = "./dockerfiles/without-xformers/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-cuda12.1.1-torch2.2.1"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.2.1+cu121"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "cu121-torch222" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-cuda12.1.1-torch2.2.2"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.2.2+cu121"
        XFORMERS_VERSION = "0.0.25.post1"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

target "cu121-torch230" {
    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-cuda12.1.1-torch2.3.0"]
    args = {
        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
        REQUIRED_CUDA_VERSION = "12.1"
        RELEASE = "${RELEASE}"
        INDEX_URL = "https://download.pytorch.org/whl/cu121"
        TORCH_VERSION = "2.3.0+cu121"
        XFORMERS_VERSION = "0.0.26.post1"
        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
    }
    platforms = ["linux/amd64"]
    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
}

#target "cu121-torch231" {
#    dockerfile = "./dockerfiles/with-xformers-cuxxx/Dockerfile"
#    tags = ["${REGISTRY}/${REGISTRY_USER}/runpod-base:${RELEASE}-cuda12.1.1-torch2.3.1"]
#    args = {
#        BASE_IMAGE = "nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04"
#        REQUIRED_CUDA_VERSION = "12.1"
#        RELEASE = "${RELEASE}"
#        INDEX_URL = "https://download.pytorch.org/whl/cu121"
#        TORCH_VERSION = "2.3.1+cu121"
#        XFORMERS_VERSION = "0.0.26.post1"
#        RUNPODCTL_VERSION = "${RUNPODCTL_VERSION}"
#    }
#    platforms = ["linux/amd64"]
#    annotations = ["org.opencontainers.image.authors=${REGISTRY_USER}"]
#}
