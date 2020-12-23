terraform {
  backend "s3" {
    region = "us-west-2"
    shared_credentials_file = "~/.aws/credentials"
    profile = "gkerocks"

    bucket = "omegazyadav-2020-12-21"
    key    = "terraform.tfstate"
    dynamodb_table = "omega"
  }
}
