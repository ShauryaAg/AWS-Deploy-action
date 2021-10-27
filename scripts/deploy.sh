#!/bin/sh

# Creating AWS Deployment
aws deploy create-deployment \
    --application-name ${AWS_APP_NAME} \
    --deployment-config-name CodeDeployDefault.OneAtATime \
    --deployment-group-name ${AWS_DEPLOY_GROUP} \
    --file-exists-behavior OVERWRITE \
    --s3-location bucket=${AWS_PUBLISH_BUCKET_NAME},key=${AWS_FILENAME}.zip,bundleType=zip
