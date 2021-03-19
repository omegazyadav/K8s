## DNS Nameservers Details

output "ACM_Certificates" {
  value       = aws_acm_certificate.omega.arn
}

output "DNS_Records" {
  value = tomap({
    for k, bd in aws_route53_record.omega : k => bd.name
  })
}


