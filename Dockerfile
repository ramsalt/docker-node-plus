ARG IMAGE_BASE_TAG

FROM wodby/node:${IMAGE_BASE_TAG}

USER root

RUN apk add --update \
        python2 \
        py2-pip

WORKDIR ${APP_ROOT}

USER node
