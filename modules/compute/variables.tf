variable "instance_name" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "enable_monitoring" {
  type = string
}

variable "env" {
  type = string
}

# variable "default_security_group_id" {
#   type = string
# }