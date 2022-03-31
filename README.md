# terraform-aws-static-website

Terraform module to create static websites using S3 and CloudFront.

## Overview

This is a basic module which allows you to serve static contents on the web by placing them in the resulting S3 bucket. The contents will be available through the output CloudFront domain.

## To Do

1. IAM identity to programmatically upload contents to the S3 bucket through a pipeline.
2. CloudFront cache invalidation automation using EventBridge and Lambda along with the corresponding IAM policy and role.
