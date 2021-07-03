# Nameserver Details
output "nameserver_details" {
    value = aws_route53_zone.kubectl_tech.*.name_servers
}
