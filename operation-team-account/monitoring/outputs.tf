output "opensearch_endpoint" {
  description = "Endpoint URL of the OpenSearch domain"
  value       = module.opensearch_domain.endpoint
  sensitive   = true
}

output "bucket_name" {
  description = "S3 bucket name for CloudTrail logs"
  value       = module.s3.bucket_name
  sensitive   = true
}

output "bucket_arn" {
  description = "S3 bucket ARN for CloudTrail logs"
  value       = module.s3.bucket_arn
  sensitive   = true
}

output "kms_key_arn" {
  description = "KMS key ARN used to encrypt CloudTrail logs"
  value       = module.s3.kms_key_arn
  sensitive   = true
}

output "operation_account_id" {
  description = "Account ID of the operation account"
  value       = data.aws_caller_identity.current.account_id
  sensitive   = true
}