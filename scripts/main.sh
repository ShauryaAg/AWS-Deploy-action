#!/bin/sh

for SUB in ${1[@]}
do
    if [ -d "$SUB" ]
    then
        cd ${SUB}
        if [ ! -f "appspec.yml" ]
        then
            echo $PWD
            echo "AppSpec.yml not found in ${SUB}"
            continue
        fi
    else
        continue
    fi

    echo "Getting ${SUB} ENV variables ....."
    chmod +x ./get_env.sh
    sh ./get_env.sh

    echo "Pushing: ${SUB} ......"
    chmod +x ./push.sh
    sh ./push.sh

    echo "Creating Deployment: ${SUB} ......"
    chmod +x ./deploy.sh
    sh ./deploy.sh

    cd ..
done
