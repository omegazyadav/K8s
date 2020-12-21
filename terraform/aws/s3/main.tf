provider "aws" {
  region = "us-west-2"
  shared_credentials_file = "/home/omega/.aws/credentials"
  profile = "gkerocks"
}


module "s3_bucket" {
  source = "./modules/aws-s3-bucket"

  bucket_name = "omegazyadav-2020-12-21"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

