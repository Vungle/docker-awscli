# 1.17

Since we use this image in EKS and either the env variables are declared in the helm chart or we assume an IAM role, we don't want to set AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in the docker image to avoid conflicts with the service account annotation in order to assume an IAM role.

# Docker AWS CLI Image (Docker Hub: vungle/awscli)

Example:

    docker run --rm \
      --env AWS_ACCESS_KEY_ID=<your_key_id> \
      --env AWS_SECRET_ACCESS_KEY=<your_secret> \
      vungle/awscli info

This should output something like:

    usage: aws [options] <command> <subcommand> [<subcommand> ...] [parameters]
    To see help text, you can run:

      aws help
      aws <command> help
      aws <command> <subcommand> help
    aws: error: argument command: Invalid choice, valid choices are:

    acm                                      | apigateway
    application-autoscaling                  | autoscaling
    cloudformation                           | cloudfront
    cloudhsm                                 | cloudsearch
    cloudsearchdomain                        | cloudtrail
    cloudwatch                               | codecommit
    codepipeline                             | cognito-identity
    cognito-idp                              | cognito-sync
    datapipeline                             | devicefarm
    directconnect                            | discovery
    dms                                      | ds
    dynamodb                                 | dynamodbstreams
    ec2                                      | ecr
    ecs                                      | efs
    elasticache                              | elasticbeanstalk
    elastictranscoder                        | elb
    emr                                      | es
    ...