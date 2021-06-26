#!/bin/bash

start() {
    mkdir -p ./data
    mkdir -p ./logs
    docker-compose up -d
}


stop() {
    docker-compose down
}


restart() {
    docker-compose restart
}


help() {
    echo "Usage:"
    echo "    $./cont.sh start"
    echo "    $./cont.sh stop"
    echo "    $./cont.sh restart"
}


if [ -z "$1" ]
    then
        help
    else
        case "$1" in
        ("start") start;;
        ("stop") stop;;
        ("restart") restart;;
        (*) help;;
        esac
fi
