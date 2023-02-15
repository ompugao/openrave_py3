#!/bin/bash
CONTAINER=${1:-app}
SCRIPTDIR=$(dirname $0)
DOCKERCOMPOSEYML=./docker-compose.yml
cd $SCRIPTDIR
set -e
bash ../set_xauth.sh
docker compose --project-name openrave_py3 -f $DOCKERCOMPOSEYML up -d ${CONTAINER}
set +e
docker compose --project-name openrave_py3 -f $DOCKERCOMPOSEYML exec --workdir /workspace ${CONTAINER} bash


