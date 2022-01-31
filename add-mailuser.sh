#! /bin/bash

docker run --rm -v ${PWD}/persist-data/dms/config/:/tmp/docker-mailserver/ vircadia-mailserver setup email add cadia@n=vircadia-metaverse.com noneknowsit mailuser.sh
docker run --rm -v ${PWD}/persist-data/dms/config/:/tmp/docker-mailserver/ vircadia-mailserver setup alias add postmaster@vircadia-metaverse.com cadia@vircadia-metaverse.com
docker run --rm -v ${PWD}/persist-data/dms/config/:/tmp/docker-mailserver/ vircadia-mailserver setup config dkim
