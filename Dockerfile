# syntax=docker/dockerfile:1

ARG RUNTIME=golang
ARG RUNTIME_VERSION=1.22.3-alpine3.19

FROM ${RUNTIME}:${RUNTIME_VERSION} as core

WORKDIR /go/src
ENV PORT 3000

RUN apk update && apk add bash

EXPOSE $PORT

ENTRYPOINT ["bash"]
