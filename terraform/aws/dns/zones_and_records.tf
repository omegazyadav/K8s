## DNS zone Information
resource "aws_route53_zone" "kubectl_tech" {
  name = "kubectl.tech" 
}


## DNS Records Information 

resource "aws_route53_record" "omega" {
  allow_overwrite = true
  name            = "omega.example.com"
  ttl             = 60
  type            = "NS"
  zone_id         = aws_route53_zone.kubectl_tech.zone_id

  #records = [
  #  aws_route53_zone.example.name_servers[0],
  #  aws_route53_zone.example.name_servers[1],
  #  aws_route53_zone.example.name_servers[2],
  #  aws_route53_zone.example.name_servers[3],
  #]
  records = aws_route53_zone.kubectl_tech.name_servers
}
