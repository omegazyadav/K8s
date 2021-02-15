## DNS Nameservers Details 

output "Nameserver_Details" {
    value = aws_route53_zone.kubectl_tech.*.name_servers
}

output "ACM_Certificates" {
  value       = aws_acm_certificate.omega.arn
}

output "DNS_Records" {
  value = tomap({
    for k, bd in aws_route53_record.omega : k => bd.name
  })
}


