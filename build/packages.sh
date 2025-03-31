#!/usr/bin/env bash
apt update
apt -y upgrade
apt install -y --no-install-recommends \
    build-essential \
    software-properties-common \
    python3-pip \
    python3-dev \
    nodejs \
    npm \
    bash \
    dos2unix \
    git \
    git-lfs \
    ncdu \
    nginx \
    net-tools \
    dnsutils \
    inetutils-ping \
    openssh-server \
    libglib2.0-0 \
    libsm6 \
    libgl1 \
    libxrender1 \
    libxext6 \
    ffmpeg \
    wget \
    curl \
    psmisc \
    rsync \
    vim \
    nano \
    zip \
    unzip \
    p7zip-full \
    htop \
    screen \
    tmux \
    bc \
    aria2 \
    cron \
    pkg-config \
    plocate \
    parallel \
    pv \
    sysstat \
    pigz \
    lz4 \
    zstd \
    cpio \
    jq \
    libcairo2-dev \
    libgoogle-perftools4 \
    libtcmalloc-minimal4 \
    apt-transport-https \
    ca-certificates

if [ -n "${PYTHON_VERSION}" ]; then
    # Install Python from deadsnakes PPA
    add-apt-repository ppa:deadsnakes/ppa
    apt install -y --no-install-recommends \
        "python${PYTHON_VERSION}" \
        "python${PYTHON_VERSION}-dev" \
        "python${PYTHON_VERSION}-venv" \
        "python3-tk"

    # Link Python
    rm /usr/bin/python
    ln -s /usr/bin/python${PYTHON_VERSION} /usr/bin/python
    rm /usr/bin/python3
    ln -s /usr/bin/python${PYTHON_VERSION} /usr/bin/python3

    # Install pip
    curl -sS https://bootstrap.pypa.io/get-pip.py | python${PYTHON_VERSION}

    # Upgrade pip
    python3 -m pip install --upgrade --no-cache-dir pip

    # Create symlink for pip3
    rm -f /usr/bin/pip3
    ln -s /usr/local/bin/pip3 /usr/bin/pip3
fi

update-ca-certificates
apt clean
rm -rf /var/lib/apt/lists/*
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
