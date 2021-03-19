output "Nameserver_Details" {
    value = aws_route53_zone.kubectl_tech.*.name_servers
}

output "ACM_Certificates" {
  value  = module.dns.ACM_Certificates
}

output "DNS_Records" {
  value  = module.dns.DNS_Records
}

