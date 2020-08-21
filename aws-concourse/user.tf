resource "aws_iam_user" "gha_aws_concourse_user" {
  name = "gha_aws_concourse"
}

data "aws_iam_policy_document" "gha_aws_concourse_user" {
  statement {
    actions = [
      "sts:AssumeRole",
      "sts:TagSession"
    ]

    resources = [
      "arn:aws:iam::${lookup(local.account, local.environment)}:role/gha_aws_concourse_role",
    ]
  }
}


resource "aws_iam_policy" "gha_aws_concourse_user" {
  name   = "${local.name}-${local.repo_name}-AssumeRole"
  policy = data.aws_iam_policy_document.gha_aws_concourse_user.json
}

resource "aws_iam_user_policy_attachment" "gha_aws_concourse_user" {
  user       = aws_iam_user.gha_aws_concourse_user.name
  policy_arn = aws_iam_policy.gha_aws_concourse_user.arn
}
