terraform {
  source = "../../../modules/network"
}

inputs = {
  env             = "dev"
  vpc_name        = "eks"
  vpc_cidr        = "10.0.0.0/16"
  vpc_azs         = ["us-east-1a"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]
}

