provider "aws"{ 
  region = "us-east-1" 
} 

 

module "keyfarrukh" { 
  source           = "./modules" 
  key_name         = "keyhuseyin" 
  public_key       = "~/.ssh/id_rsa.pub" 
} 