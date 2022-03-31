data "aws_caller_identity" "current" {}
data "aws_region" "current" {}
locals {
  account_id = data.aws_caller_identity.current.account_id
  region     = data.aws_region.current.name
}

variable "tag_Name" {
  type        = string
  description = "Human-friendly name for the project resources."
}

variable "tag_sitecode" {
  type        = string
  description = "Which site the project is attached to."
}

variable "tag_department" {
  type        = string
  description = "Which department owns the project."
}

variable "tag_team" {
  type        = string
  description = "Which team owns the project."
}

variable "tag_tier" {
  type        = string
  description = "Deployment tier for the resources."
}

variable "tag_costcenter" {
  type        = string
  description = "Which cost center the project is attached to."
}

variable "s3_force_destroy" {
  type        = bool
  default     = true
  description = "Whether to force deletion of the S3 bucket during infrastructure destruction. Valid value can be true or false."
}

variable "cloudfront_price_class" {
  type        = string
  default     = "PriceClass_100"
  description = "Price class and distribution range for the CloudFront Distribution. Valid value can be PriceClass_100, PriceClass_200, or PriceClass_ALL."
}
