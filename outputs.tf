output "s3_bucket_name" {
  value       = aws_s3_bucket.bucket.id
  description = "The name of the S3 bucket hosting the static web files."
}

output "s3_bucket_arn" {
  value       = aws_s3_bucket.bucket.arn
  description = "The ARN of the S3 bucket hosting the static web files."
}

output "cloudfront_id" {
  value       = aws_cloudfront_distribution.s3_distribution.id
  description = "The CloudFront Distribution ID."
}

output "cloudfront_arn" {
  value       = aws_cloudfront_distribution.s3_distribution.arn
  description = "The CloudFront Distribution ARN."
}

output "cloudfront_domain" {
  value       = aws_cloudfront_distribution.s3_distribution.domain_name
  description = "The DNS address of the CloudFront Distribution."
}

output "cloudfront_hosted_zone" {
  value       = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
  description = "The Hosted Zone ID of the CloudFront Distribution to use with Route 53 Alias record type."
}

output "iam_user" {
  value       = aws_iam_user.user.name
  description = "The IAM user with upload access to the S3 bucket."
}
