output "bucket_arn" {
  description = "ARN of the bucket"
  value       = module.s3_bucket.arn
}

output "bucket_name" {
  description = "Name (id) of the bucket"
  value       = module.s3_bucket.name
}

#output "website_endpoint" {
#  description = "Domain name of the bucket"
#  value       = module.s3_bucket.website_endpoint
#}

