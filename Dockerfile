FROM alpine AS base

ARG VERSION=3.2.7

RUN cd /tmp && \
    apk add g++ make python git && \
    git clone --branch "v${VERSION}" --recursive git://github.com/apiaryio/drafter.git && \
    cd drafter && \
    ./configure && \
    make install

FROM alpine

RUN apk add libgcc libstdc++

COPY --from=base /usr/local/bin/drafter /usr/local/bin/drafter

VOLUME ["/drafter"]

WORKDIR /drafter

CMD ["/usr/local/bin/drafter", "--help"]

ENTRYPOINT [ "/usr/local/bin/drafter" ]
