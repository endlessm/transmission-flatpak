#!/bin/bash

set -e

if [[ ! -d repo ]]
then
    ostree  init --mode=archive-z2 --repo=repo
fi

REPO=repo
APP=com.transmissionbt.Transmission

flatpak-builder \
    --force-clean \
    --ccache \
    --require-changes \
    --repo=$REPO \
    --arch=$(flatpak --default-arch) \
    --subject="build of $APP, $(date)" \
    build \
    $APP.json
flatpak build-update-repo \
    $REPO