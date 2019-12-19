terraform {
  backend "s3" {
    bucket = "backend-state-sera"
    key    = "infrastructure"
    region = "us-east-1"
  }
}