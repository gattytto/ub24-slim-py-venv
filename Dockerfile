FROM public.ecr.aws/ubuntu/ubuntu:24.04
RUN apt update && apt dist-upgrade -y && apt install -y \
    python3-venv \
    python3-pip \
    python3-dev \
    python3 \
    git \
    libpq-dev \
    gcc \
    nodejs \
    npm \
    curl \
    wget \
    fd-find \
    jq \
    less \
    file \
    patch \
    unzip \
    zip \
    procps && \
    ln -s /usr/bin/fdfind /usr/local/bin/fd && \
    wget -qO ripgrep.deb https://github.com/BurntSushi/ripgrep/releases/download/15.1.0/ripgrep_15.1.0-1_amd64.deb && \
    apt install -y ./ripgrep.deb
