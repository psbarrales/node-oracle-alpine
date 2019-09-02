FROM asg1612/alpine-oracle-instantclient

RUN echo "http://nl.alpinelinux.org/alpine/v3.10/main" >> /etc/apk/repositories && \
    echo "http://nl.alpinelinux.org/alpine/v3.10/community" >> /etc/apk/repositories && \
    echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "@edgecommunity http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add musl libaio libnsl libtirpc nodejs@edge npm@edge yarn && \
    ln -s /usr/lib/libnsl.so.2 /usr/lib/libnsl.so.1

CMD ["node"]
