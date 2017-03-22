#!/bin/bash

set -e

if [[ ! -d repo ]]
then
    ostree  init --mode=archive-z2 --repo=repo
fi

REPO=repo

flatpak-builder \
    --force-clean \
    --ccache \
    --require-changes \
    --repo=$REPO \
    --arch=$(flatpak --default-arch) \
    --subject="build of com.transmissionbt.Transmission, $(date)" \
    build \
    com.transmissionbt.Transmission.json
flatpak build-update-repo \
    $REPO