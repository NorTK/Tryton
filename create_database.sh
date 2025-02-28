#!/bin/bash

source tryton.conf

TRYTON_DB="tryton"

if [[ ${1} != "" ]]; then
    TRYTON_DB=$1
fi

# This is done only once per client
echo "Setup database for tryton"
podman run --replace                              \
    --name trytond-admin                          \
    --env DB_HOSTNAME="${POSTGRES_DATABASE}"      \
    --env DB_PASSWORD="${POSTGRES_PASSWORD}"      \
    --network tryton                              \
    --interactive                                 \
    --tty                                         \
    --rm                                          \
    tryton/tryton                                 \
    trytond-admin -d ${TRYTON_DB} --all
