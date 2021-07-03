terraform {
  backend "s3" {
    region = "us-west-2"
    bucket = "omegazyadav-2020-12-21"
    key    = "iac-kubectl-dns-state"
    dynamodb_table = "omega"
  }
}

