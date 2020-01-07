terraform {
  backend "s3" {
    bucket = "terraform-tfstate-huseyin"
    key    = "infrastructure"
    region = "us-east-1"
  }
}