#!/bin/bash
set -euo pipefail

password=$(aws ssm get-parameter --region ap-southeast-2 --name "/shared/redshift" --with-decryption --query "Parameter.Value" | tr -d \")
sed --in-place "s/new_password/$password/" "/root/.dbt/profiles.yml"

dbt run 
dbt generate docs
token=$(aws ssm get-parameter --region us-east-1 --name "/shared/netlify" --with-decryption --query "Parameter.Value" | tr -d \")
echo 'Running netlifyctl: '
./netlifyctl -A $token deploy