module "kubectl_tech" {
  source = "../kubectl.tech"

  providers = {
    aws = aws.ap_south_1
  }
}

module "omega" {
  source = "../omega.kubectl.tech"

  providers = {
    aws = aws.acm_provider
  }
}

