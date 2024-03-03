resource "aws_s3_bucket_ownership_controls" "wellthy_techtest_ownership_controls" {
  bucket = var.bucket_id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}
resource "aws_s3_bucket_public_access_block" "wellthy_techtest" {
  bucket = var.bucket_id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
resource "aws_s3_bucket_server_side_encryption_configuration" "encryption_config" {
  bucket = var.bucket_id

  rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
  }
}
resource "aws_s3_bucket_versioning" "wellthy_techtest_versioning" {
  bucket = var.bucket_id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_policy" "wellthy_techtest_policy" {
  bucket = var.bucket_id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "DenyInsecureTransport",
        Effect    = "Deny",
        Principal = "*",
        Action    = "s3:*",
        Resource  = [
          "arn:aws:s3:::wellthy-techtest-${var.name}",
          "arn:aws:s3:::wellthy-techtest-${var.name}/*"
        ],
        Condition = {
          Bool = {
            "aws:SecureTransport": "false"
          }
        }
      }
    ]
  })
}
