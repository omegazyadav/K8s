variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "security_group" {
  type        = string
  description = "Security Group"
}

variable "private_subnet1" {
  type        = string
  description = "Private Subnet1"
}

variable "private_subnet2" {
  type        = string
  description = "Private Subnet2"
}
