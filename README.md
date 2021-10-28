# Deploy-to-AWS Action

GitHub Action to deploy the application to AWS EC2

This GitHub Action is based off of my blog to deploy multiple microservices whilst maintaing a single parent repository

> [How I designed and deployed a scalable microservice architecture with limited resources](https://shauryaag.medium.com/how-i-designed-and-deployed-a-scalable-microservice-architecture-with-limited-resources-c326d8ab4282)

### Steps:

- Set up the AWS credentials
- Fetch the environment variables from a bucket in AWS S3
- Check for updates in any [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
- Deploy each submodule separately to the AWS EC2 instance

### Configuration:

| Option       | Type    | Default | Required           | Notes                                                                                                                                     |
| ------------ | ------- | ------- | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
| get-env      | boolean | true    | :x:                | Flag to specify if ENV secrets should be fetched from the AWS Bucket. Set `false` if ENV secrets should not be fetched, otherwise ignore. |
| env-bucket   | string  | -       | :heavy_check_mark: | Bucket where the ENV Secrets are stored. Specify the whole path, if ENV Secrets are stored deep inside the directory tree.                |
| aws-app-name | string  | -       | :heavy_check_mark: | AWS App Name                                                                                                                              |
| app-bucket   | string  | -       | :heavy_check_mark: | Bucket where the deployment should be stored                                                                                              |
| app-group    | string  | -       | :heavy_check_mark: | AWS Deployment Group Name to deploy the application                                                                                       |
