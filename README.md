# dbt-on-buildkite
running dbt from buildkite and generating dbt docs to be served on netlify

## Things you should have before running this
1. Have an AWS Account [sign up here](https://portal.aws.amazon.com/billing/signup#/start)
2. Have a Buildkite account [sign up here](https://buildkite.com/signup)
3. Have a netlify account [sign up here](https://app.netlify.com/signup)
4. Have the aws cli configured
5. Have a netlify deploy token
6. Have a netlify manually deployed site and site id handy
7. A good understanding of AWS at an AWS ASA cert level


## Steps to setup buildkite
1. Create your elastic CI stack for buildkite on AWS [here](https://buildkite.com/docs/tutorials/elastic-ci-stack-aws)
2. Create an EC2 pem file and upload it to the buildkite secrets bucket
3. Either create or copy a github public key to the buildkite secrets bucket
4. Create a pipeline in buildkite
5. Add a webhook to your github repository
6. Put the following in the build command: `buildkite-agent pipeline upload .buildkite/deploy.yml`

## Setting up netlify
1. Create a manual deploy site [here](https://www.netlify.com/docs/manual-deploys/)
2. Get the site id and update the `netlify.toml` file with the id
3. Create a netlify access token

## Create the Redshift Cluster
1. Go to your AWS Account and deploy the `redshift-cf.yaml` template
2. Copy down the password for safe keeping


## Deploy the Redshift cluster password and Netlify access token using the following CLI call
aws ssm put-parameter --region ap-southeast-2 --name MyParameter --value "secret_value" --type SecureString



### dbt models for [your org/project name]

---
- [What is dbt](https://dbt.readme.io/docs/overview)?
- Read the [dbt viewpoint](https://dbt.readme.io/docs/viewpoint)
- [Installation](https://dbt.readme.io/docs/installation)
- Join the [chat](http://ac-slackin.herokuapp.com/) on Slack for live questions and support.

---
