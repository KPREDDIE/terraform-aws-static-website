resource "aws_iam_user" "user" {
  name          = "${aws_s3_bucket.bucket.id}-uploader"
  force_destroy = var.user_force_destroy
}

resource "aws_iam_user_policy" "user_policy" {
  name = "${aws_s3_bucket.bucket.id}-uploader"
  user = aws_iam_user.user.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:PutObjectAcl",
        "s3:PutObject",
        "s3:GetObject",
        "s3:HeadObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${aws_s3_bucket.bucket.arn}",
        "${aws_s3_bucket.bucket.arn}/*"
      ]
    }
  ]
}
EOF
}
