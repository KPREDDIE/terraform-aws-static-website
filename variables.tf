data "aws_caller_identity" "current" {}
data "aws_region" "current" {}
locals {
  account_id = data.aws_caller_identity.current.account_id
  region     = data.aws_region.current.name
}

variable "force_destroy" {
  type        = bool
  default     = true
  description = "Whether to force deletion of the S3 bucket during infrastructure destruction. Valid value can be true or false."
}
