terraform {
  backend "s3" {
    region = "ap-south-1"
    bucket = "omegazyadav-2022-06-30"
    key    = "iac-kubectl-dns-state"
    dynamodb_table = "omega"
  }
}

