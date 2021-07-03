module "kubectl_tech" {
  source = "../kubectl.tech"

}

module "omega" {
  source = "../omega.kubectl.tech"

  providers = {
    aws = aws.acm_provider
  }
}
