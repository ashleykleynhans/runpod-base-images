#!/usr/bin/env bash
apt update
apt -y upgrade
apt install -y --no-install-recommends \
    build-essential \
    software-properties-common \
    python3.10-venv \
    python3-pip \
    python3-tk \
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
    libcairo2-dev \
    libgoogle-perftools4 \
    libtcmalloc-minimal4 \
    apt-transport-https \
    ca-certificates
update-ca-certificates
apt clean
rm -rf /var/lib/apt/lists/*
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
