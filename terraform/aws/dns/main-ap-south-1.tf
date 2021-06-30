module "dns_ap_south_1" {
  source = "./omega.kubectl.tech"

  providers = {
    aws = aws.ap_south_1
  }
}
