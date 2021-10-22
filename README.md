# Deploy-to-AWS Action

GitHub action release to deploy the application to AWS EC2

### Steps:
- Set up the AWS credentials
- Fetch the environment variables from a bucket in AWS S3
- Deploy the application to AWS EC2

### Configuration:

Option | Type | Default | Notes
-------|------|---------|------
get-env | boolean | true | Flag to specify if ENV secrets should be fetched from the AWS Bucket. Set `false` if ENV secrets should not be fetched, otherwise ignore.
env-bucket | string |-| Bucket where the ENV Secrets are stored. Specify the whole path, if ENV Secrets are stored deep inside the directory tree.
aws-app-name | string | - | AWS App Name
app-bucket | string | - | Bucket where the deployment should be stored
