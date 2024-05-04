terraform {
  source = "../../../modules/compute"
}

inputs = {
  public_subnets = module.vpc.public_subnets
}