FROM public.ecr.aws/ubuntu/ubuntu:24.04
RUN apt update && apt dist-upgrade -y && apt install -y \
    python3-venv \
    python3-pip \
    python3 \
    git
