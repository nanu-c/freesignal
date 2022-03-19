docker-compose exec -u postgres postgresql-abuse psql -c 'create database abusedb;'

java -jar ./Signal-Server/service/target/TextSecureServer-7.37.1-dirty-SNAPSHOT.jar abusedb migrate ./service/config/config_local.yml


Es braucht

Dynamic configurations are coming from an ec2 instance

Amazon EC2
Amazon Elastic Compute Cloud (EC2) is a part of Amazon.com's cloud-computing platform, Amazon Web Services (AWS), that allows users to rent virtual computers on which to run their own computer applications. EC2 encourages scalable deployment of applications by providing a web service through which a user can boot an Amazon Machine Image (AMI) to configure a virtual machine, which Amazon calls an "instance", containing any software desired. A user can create, launch, and terminate server-instances as needed, paying by the second for active servers – hence the term "elastic". EC2 provides users with control over the geographical location of instances that allows for latency optimization and high levels of redundancy.[2] In November 2010, Amazon switched its own retail website platform to EC2 and AWS.

AmazonAppConfig
AWS AppConfig helps simplify the following tasks:
    Configure
    Source your configurations from Amazon Simple Storage Service (Amazon S3), AWS AppConfig hosted configurations, Parameter Store, Systems Manager Document Store. Use AWS CodePipeline integration to source your configurations from Bitbucket Pipelines, GitHub, and AWS CodeCommit.

    Validate
    While deploying application configurations, a simple typo could cause an unexpected outage. Prevent errors in production systems using AWS AppConfig validators. AWS AppConfig validators provide a syntactic check using a JSON schema or a semantic check using an AWS Lambda function to ensure that your configurations deploy as intended. Configuration deployments only proceed when the configuration data is valid.

    Deploy and monitor
    Define deployment criteria and rate controls to determine how your targets retrieve the new configuration. Use AWS AppConfig deployment strategies to set deployment velocity, deployment time, and bake time. Monitor each deployment to proactively catch any errors using AWS AppConfig integration with Amazon CloudWatch. If AWS AppConfig encounters an error, the system rolls back the deployment to minimize impact on your application users.



Monitoring by DataDog
Datadog is a monitoring service that provides real-time monitoring of your infrastructure, applications, and services.


Apple Push Notification Service
APN


org.whispersystems.textsecuregcm.configuration.dynamic.DynamicConfiguration.getLimits()


gcpAttachments
rsa Signing Key has to start with:
-----BEGIN PRIVATE KEY-----
openssl genrsa -out keypair.pem 2048
openssl rsa -in keypair.pem -pubout -out publickey.crt
openssl pkcs8 -topk8 -inform PEM -outform PEM -nocrypt -in keypair.pem -out pkcs8.key


zkconfig
 java -jar ./service/target/TextSecureServer-7.37.1-dirty-SNAPSHOT.jar zkparams

