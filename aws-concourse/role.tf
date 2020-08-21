resource "aws_iam_role" "gha_aws_concourse_role" {
  name               = "gha_aws_concourse_role"
  assume_role_policy = data.aws_iam_policy_document.gha_aws_concourse_user.json
}

resource "aws_iam_policy" "gha_aws_concourse_role" {
  name        = "gha_aws_concourse_role"
  description = "A test policy"
  policy      = file("policy_document.json")
}

resource "aws_iam_policy_attachment" "gha_aws_concourse_role" {
  name       = "gha_aws_concourse_role"
  roles      = ["${aws_iam_role.gha_aws_concourse_role.name}"]
  policy_arn = aws_iam_policy.gha_aws_concourse_role.arn
}

