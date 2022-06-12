FROM docker:20.10-dind

ENV EDGE_MAIN http://dl-cdn.alpinelinux.org/alpine/edge/main
ENV EDGE_COMMUNITY http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN apk update --repository=$EDGE_MAIN --repository=$EDGE_COMMUNITY \
	&& apk --no-cache add git curl make python3 py3-pip python3-dev gcc libc-dev libffi-dev \
        openssl-dev openssh-client lftp rsync --repository=$EDGE_MAIN --repository=$EDGE_COMMUNITY \
	&& pip3 --no-cache-dir install --upgrade pip \
	&& pip3 --no-cache-dir install docker-compose==1.25.4 \
	&& rm -f /var/cache/apk/* \
	&& rm -rf /root/.cache