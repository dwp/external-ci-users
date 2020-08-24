# external-ci-users

## Description

This repo is for managing users, used by third party CI tools, in order to access our AWS infrastructure.

## Usage

This works in principle, not in reality.  The policies are fake.  
How this works, right now:

`make bootstrap`  
`cd aws-concourse/`  
`terraform init && terraform plan`

## Plan
This repo should hold users that are used to run (primarily) GitHub Actions against our AWS environments.  By design, each repository will have its own user and role to manage that repo alone.  These users, their roles, their secrets etc should all be automted in their creation, maintenance and removal.

The service user that can run this repo, should remain in our `identity` repo. It should exist soley to create, maintain and remove these users.
