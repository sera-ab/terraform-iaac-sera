terraform {
  backend "s3" {
    bucket = "terraform-us-huseyin"
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}