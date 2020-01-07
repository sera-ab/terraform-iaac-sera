  
terraform {
  backend "s3" {
    bucket = "terraform-us-sera"
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}