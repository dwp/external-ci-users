# external-ci-users

## Description

This repo is for managing users, used by third party CI tools, in order to access our AWS infrastructure.

## Usage

This works in principle, not in reality.  The policies are fake.  
How this works, right now:

`make bootstrap`  
`cd aws-concourse/`  
`./betty_bootstrap.sh`  
`terraform init && terraform plan`
