variable "costcode" {
  type    = string
  default = ""
}

variable "assume_role" {
  type        = string
  default     = "ci"
  description = "IAM role assumed by GitHub Actions when running Terraform"
}

variable "region" {
  type    = string
  default = "eu-west-2"
}
