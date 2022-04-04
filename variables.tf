variable "user_force_destroy" {
  type        = bool
  default     = true
  description = "Whether to force deletion of the IAM user during infrastructure destruction. Valid value can be true or false."
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
