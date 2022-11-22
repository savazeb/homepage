#!/bin/bash

#################################################################
# Stop container
#################################################################
function stop() {
    if [[ "$(docker ps -a | grep homepage 2>/dev/null)" == "" ]]; then
        return 0
    fi
    echo -e "stopping..."
    docker stop homepage

    return 1
}

#################################################################
# Build container
#################################################################
function build() {
    docker build \
        -t homepage \
        -f ${PWD}/../src/Dockerfile.dev \
        ${PWD}/../src/.

    return 1
}

#################################################################
# Run container
#################################################################
function run() {

    if [[ "$(docker images -q homepage 2>/dev/null)" == "" ]]; then
        echo -e "container with homepage tag not found\n" \
            "make sure build is succeeded"
        exit -1
    fi
    docker run -d --rm -it --name homepage \
        -p 3000:3000 \
        -v ${PWD}/../src:/homepage \
        -v /homepage/node_modules \
        -e CHOKIDAR_USEPOLLING=true \
        -e TEST=1 \
        homepage

    return 1
}

#################################################################
# Main
#################################################################
build

# stop if container is already running
stop

run
