ARG BASE_IMAGE_TAG

FROM wodby/node:${BASE_IMAGE_TAG}

USER root

RUN apk add --update \
        python2 \
        py2-pip

WORKDIR ${APP_ROOT}

USER node
