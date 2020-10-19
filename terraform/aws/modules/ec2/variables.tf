variable "ami" {
  type        = string
  description = "AMI"
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
}


variable "public_subnet" {
  type        = string
  description = "Public Subnet"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "cidr_block" {
  type        = string
  description = "CIDR Block"
}

#variable "security_groups" {
#  type        = list(string)
#  description = "Security Group for EC2"
#}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Security Group ID"
}

variable "associate_public_ip_address" {}
variable "subnet_id" {}
