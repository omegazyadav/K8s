module "dns" {
  source = "./omega.kubectl.tech"
  
  providers = {
    aws = aws.acm_provider
  }
}
