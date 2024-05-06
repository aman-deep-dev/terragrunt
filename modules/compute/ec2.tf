module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name          = local.instance_name
  instance_type = var.instance_type
  key_name      = var.key_name
  monitoring    = var.enable_monitoring
  #   vpc_security_group_ids = ["var.default_security_group_id"]
  subnet_id = var.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = var.env
  }
}