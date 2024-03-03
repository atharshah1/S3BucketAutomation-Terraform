resource "aws_s3_bucket_policy" "wellthy_techtest" {
  bucket = var.bucket_id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "AllowExternalAccess",
        Effect    = "Allow",
        Principal = {
          AWS = "arn:aws:iam::367226414998:role/WellthyTechnicalTest"
        },
        Action    = [
          "s3:ListBucket",
          "s3:GetObject",
          "s3:PutObject",
          "s3:PutObjectAcl",
          "s3:GetObjectAcl"
        ],
        Resource  = [
          "arn:aws:s3:::${var.bucket_id}",
          "arn:aws:s3:::${var.bucket_id}/*"
        ]
      }
    ]
  })
}
