module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  name    = var.vpc_name
  cidr = var.vpc_cidr
  azs = var.vpc_azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  # enable_nat_gateway = true
  # enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = var.env
  }
}

