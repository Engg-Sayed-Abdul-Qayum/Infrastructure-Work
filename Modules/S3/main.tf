resource "aws_s3_bucket" "S3-Bucket-Name" {
  bucket = var.s3-name
}

resource "aws_s3_object" "Bucket-Data" {
  bucket = aws_s3_bucket.S3-Bucket-Name.bucket
  key = var.s3-key
}

resource "aws_s3_bucket_versioning" "Bucket-Versioning" {
  bucket = aws_s3_bucket.S3-Bucket-Name.id
  versioning_configuration {
    status = var.s3-versioning
  }
}

resource "aws_s3_bucket_public_access_block" "S3-Public-Access" {
  bucket = aws_s3_bucket.S3-Bucket-Name.id

  block_public_acls       = true
  block_public_policy     = false
  ignore_public_acls      = true
  restrict_public_buckets = false
}