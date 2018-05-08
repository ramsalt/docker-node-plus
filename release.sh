#!/usr/bin/env bash

set -e

if [[ "${TRAVIS_PULL_REQUEST}" == "false" && ("${TRAVIS_BRANCH}" == "master"  || -n "${TRAVIS_TAG}") ]]; then
  docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"

  make release

  if [[ "${TAG}" == "${LATEST_TAG}" ]]; then
    make release TAG="latest"
  fi
fi