variable "ami" {
  type        = string
  description = "AMI"
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
}

variable "associate_public_ip_address" {}
variable "subnet_id" {}
