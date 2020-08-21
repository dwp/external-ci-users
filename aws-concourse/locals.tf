locals {
  repo_name = "aws-concourse"
  #   gha_aws_concourse_pd_actions   = jsondecode(data.aws_secretsmanager_secret_version.dataworks.external_ci_users)["gha_aws_concourse_pd_actions"]
  #   gha_aws_concourse_pd_resources = jsondecode(data.aws_secretsmanager_secret_version.dataworks.external_ci_users)["gha_aws_concourse_pd_resources"]
}
