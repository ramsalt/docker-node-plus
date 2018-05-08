ARG BASE_IMAGE_TAG

FROM wodby/node:${BASE_IMAGE_TAG}

USER root

RUN apk add --update \
      python && \
      python -m ensurepip && \
      rm -r /usr/lib/python*/ensurepip && \
      pip install --upgrade pip setuptools

WORKDIR ${APP_ROOT}

USER node
