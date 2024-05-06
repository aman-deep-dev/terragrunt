terraform {
  source = "../../../modules/compute"
}

dependency "vpc" {
  config_path = "../network"
}

inputs = {
  public_subnets    = dependency.vpc.outputs.public_subnets
  instance_name     = "single-tg-instance"
  instance_type     = "t2.micro"
  enable_monitoring = false
  env               = "dev"
  key_name          = "terragrunt-dev"
}