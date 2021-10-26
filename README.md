# Deploy-to-AWS Action

GitHub action release to deploy the application to AWS EC2

### Steps:

- Set up the AWS credentials
- Fetch the environment variables from a bucket in AWS S3
- Deploy the application to AWS EC2

### Configuration:

| Option       | Type    | Default | Required           | Notes                                                                                                                                     |
| ------------ | ------- | ------- | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
| get-env      | boolean | true    | :x:                | Flag to specify if ENV secrets should be fetched from the AWS Bucket. Set `false` if ENV secrets should not be fetched, otherwise ignore. |
| env-bucket   | string  | -       | :heavy_check_mark: | Bucket where the ENV Secrets are stored. Specify the whole path, if ENV Secrets are stored deep inside the directory tree.                |
| aws-app-name | string  | -       | :heavy_check_mark: | AWS App Name                                                                                                                              |
| app-bucket   | string  | -       | :heavy_check_mark: | Bucket where the deployment should be stored                                                                                              |
| app-group    | string  | -       | :heavy_check_mark: | AWS App Group Name used to deploy the application                                                                                         |
