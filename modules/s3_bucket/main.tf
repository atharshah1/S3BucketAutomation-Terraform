resource "aws_s3_bucket" "wellthy_techtest" {
  bucket = "wellthy-techtest-${var.name}"
}
output "bucket_id" {
  value = aws_s3_bucket.wellthy_techtest.id
}
