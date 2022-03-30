resource "aws_s3_bucket" "bucket" {
  bucket        = "pp-bucket1-${local.region}-${local.account_id}"
  force_destroy = var.force_destroy
}

resource "aws_s3_bucket_acl" "bucket" {
  bucket = aws_s3_bucket.bucket1.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "bucket" {
  bucket                  = aws_s3_bucket.bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
