resource "aws_iam_user" "gha_aws_concourse" {
  name = "gha_aws_concourse"
}

data "aws_iam_policy_document" "gha_aws_concourse" {
  statement {
    actions = [
      "sts:AssumeRole",
    ]

    resources = [
      "arn:aws:iam::${lookup(local.account, local.environment)}:role/gha_aws_concourse",
    ]
  }
}


resource "aws_iam_policy" "gha_aws_concourse" {
  name   = "${local.name}-${local.repo_name}-AssumeRole"
  policy = data.aws_iam_policy_document.gha_aws_concourse.json
}

resource "aws_iam_user_policy_attachment" "gha_aws_concourse" {
  user       = aws_iam_user.gha_aws_concourse.name
  policy_arn = aws_iam_policy.gha_aws_concourse.arn
}
