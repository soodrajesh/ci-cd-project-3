provider "aws" {
  alias   = "secondary"
  region  = "us-west-2"
  profile = var.aws_profile
}
