variable "ami" {
  type        = string
  description = "AMI"
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Security Group ID"
}

variable "associate_public_ip_address" {}
variable "subnet_id" {}
