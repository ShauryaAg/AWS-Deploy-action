#!/bin/sh

if [ -z "${GET_ENV}" ]; then
  echo "GET_ENV is not set"
fi
else 
    # Copying env files from S3 to Container
    aws s3 cp s3://$ENV_BUCKET/ ./ --recursive
fi