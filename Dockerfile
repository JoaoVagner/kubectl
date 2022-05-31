# eks version
FROM alpine/k8s:1.22.6

RUN apk add --update \
        coreutils \
        py-pip

RUN pip install awscli

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
