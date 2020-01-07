  
terraform {
  backend "s3" {
    bucket = "wordpress-sera-2019-dev"
    key    = "application/us-east-1/state/dev/infrastracture.ftstate"
    region = "us-east-1"
  }
}