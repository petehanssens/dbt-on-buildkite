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


## Steps to build this
1. Create your elastic CI stack for buildkite on AWS [here](https://buildkite.com/docs/tutorials/elastic-ci-stack-aws)
2. 

### putting secure string ssm parameters into aws using cli
aws ssm put-parameter --region ap-southeast-2 --name MyParameter --value "secret_value" --type SecureString



### dbt models for [your org/project name]

---
- [What is dbt](https://dbt.readme.io/docs/overview)?
- Read the [dbt viewpoint](https://dbt.readme.io/docs/viewpoint)
- [Installation](https://dbt.readme.io/docs/installation)
- Join the [chat](http://ac-slackin.herokuapp.com/) on Slack for live questions and support.

---
