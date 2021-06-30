terraform {
  required_providers  {

  aws =  {
    source  = "hashicorp/aws"
    version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

provider "aws" {
  alias      = "acm_provider"
  region     = "us-east-1"
}

provider "aws" {
  alias      = "ap_south_1"
  region     = "ap-south-1"
}
