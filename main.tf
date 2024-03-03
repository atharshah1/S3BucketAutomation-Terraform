# Define the AWS provider and region
provider "aws" {
  region = "us-east-2"
}

# Load data for current AWS user ID
data "aws_canonical_user_id" "current" {}

# Load variables from module
module "s3_bucket" {
  source = "./modules/s3_bucket"
  name   = var.name
}

# Load variables from module
module "s3_bucket_policy" {
  source   = "./modules/s3_bucket_policy"
  bucket_id = module.s3_bucket.bucket_id
}

# Load variables from module
module "secure_s3_bucket" {
  source   = "./modules/secure_s3_bucket"
  bucket_id = module.s3_bucket.bucket_id
  name   = var.name
}

module "server_logging" {
  source   = "./modules/server_logging"
  bucket_id = module.s3_bucket.bucket_id
  name   = var.name
}