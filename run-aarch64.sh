#!/bin/sh
# ./configure --host=aarch64-linux-gnu --disable-shared --enable-debug
# echo to avoid libssp
# sed -i 's,-fstack-protector-strong -fstack-clash-protection,,' Makefile */Makefile
docker build -f Dockerfile-fedora-aarch64 -t safeclib-aarch64 .
docker run --rm -t safeclib-aarch64 -it $@
