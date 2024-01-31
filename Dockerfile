FROM ubuntu

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y calibre && \
    apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/

# RUN apt-get install -y wget python3 libegl1 libopengl0 libxcb-cursor0 xz-utils libdeflate-toolsl libfontconfig1 libxkbcommon0 libglx0
# RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin

WORKDIR /data

ENTRYPOINT ["ebook-convert"]