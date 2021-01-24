module "website_s3_bucket" {
  source = "./modules/aws-s3-bucket"

  bucket_name = "omegazyadav-2020-12-22"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
