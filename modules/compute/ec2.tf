module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "single-tg-instance"

  instance_type = "t2.micro"
  key_name      = "terragrunt-dev"
  monitoring    = false
  #   vpc_security_group_ids = ["var.default_security_group_id"]
  subnet_id = var.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }
}