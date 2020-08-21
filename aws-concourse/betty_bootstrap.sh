#!/bin/bash
aws secretsmanager get-secret-value \
--secret-id /concourse/dataworks/external-ci-users \
--query SecretBinary \
--output text \
--profile dataworks-management | base64 -D | jq -r '.["aws-concourse"]' | cat >> policy_document.json
