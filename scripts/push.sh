#!/bin/sh

aws deploy push \
    --application-name ${AWS_APP_NAME} \
    --description "Revision for the ${AWS_APP_NAME}" \
    --no-ignore-hidden-files \
    --s3-location s3://${AWS_PUBLISH_BUCKET_NAME}/${AWS_FILENAME}.zip \
    --source .
