variable "cidr_block" {
  description = "CIDR range for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR range for private Subnet"
  type        = string
  default     = "10.0.2.0/24"
}
