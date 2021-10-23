#!/bin/sh

if [ ! -f "appspec.yml" ]; then
    echo $PWD
    echo "AppSpec.yml not found in project root"
    exit 1
fi

sh ./push.sh
sh ./deploy.sh
