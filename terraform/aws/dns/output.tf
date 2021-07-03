output "Nameserver_Details" {
    value = module.kubectl_tech.nameserver_details
}

output "ACM_Certificates" {
  value  = module.omega.ACM_Certificates
}

output "DNS_Records" {
  value  = module.omega.DNS_Records
}

