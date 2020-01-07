region            = "us-west-1"

s3_bucket         = "wordpress-huseyin-2019-prod"         #Will be used to set backend.tf 
s3_folder_project = "application"                  #Will be used to set backend.tf 
s3_folder_region  = "us-west-1"                    #Will be used to set backend.tf 
s3_folder_type    = "state"                        #Will be used to set backend.tf 
s3_tfstate_file   = "infrastructure.tfstate"       #Will be used to set backend.tf 


environment       = "prod" 
terraform         = "true"


name     = "prod-wordpress"
cidr     = "10.10.0.0/16"

az          = ["us-west-1a","us-west-1b","us-west-1a"]
pub-cidr    = ["10.10.1.0/24","10.10.2.0/24","10.10.3.0/24"]
priv-cidr   = ["10.10.11.0/24","10.10.12.0/24","10.10.13.0/24"]

enable_nat_gateway = true
enable_vpn_gateway = true