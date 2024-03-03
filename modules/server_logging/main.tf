resource "aws_s3_bucket_logging" "logging_bucket" {
  bucket = var.bucket_id

  target_bucket = "wellthy-core-playground-s3-access-logs-recent"
  target_prefix = "wellthy-techtest-${var.name}/"
}
