run:
    podman run --rm -it -v .:/usr/src/app:z sinistral:latest && ./target/debug/sinistral
