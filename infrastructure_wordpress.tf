module "wordpress" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.cidr

  azs             = [var.az[0], var.az[1]]
  public_subnets  = [var.pub-cidr[0], var.pub-cidr[1]]
  private_subnets = [var.priv-cidr[0], var.priv-cidr[1]]
  
  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway

  tags = {
    Terraform = var.terraform
    Environment = var.environment
  }
}