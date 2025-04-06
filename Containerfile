FROM registry.fedoraproject.org/fedora-minimal:41 as builder

RUN dnf install -y gtk4-devel gcc && dnf clean -y all

RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y

RUN . ~/.cargo/env
ENV PATH=/root/.cargo/bin:$PATH

WORKDIR /usr/src/app

CMD ["cargo", "build"]
