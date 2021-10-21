if [ ! -f "appspec.yml" ]; then
    echo $PWD
    echo "AppSpec.yml not found in project root"
    exit 1
fi

aws deploy push \
    --application-name ${AWS_APP_NAME} \
    --description "Revision for the ${AWS_APP_NAME}" \
    --no-ignore-hidden-files \
    --s3-location s3://${AWS_PUBLISH_BUCKET_NAME}/${AWS_FILENAME}.zip \
    --source .

aws deploy create-deployment \
    --application-name ${AWS_APP_NAME} \
    --deployment-config-name CodeDeployDefault.OneAtATime \
    --deployment-group-name ${AWS_DEPLOY_GROUP} \
    --file-exists-behavior OVERWRITE \
    --s3-location bucket=${AWS_PUBLISH_BUCKET_NAME},key=${AWS_FILENAME}.zip,bundleType=zip
