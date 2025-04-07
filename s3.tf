resource "aws_s3_bucket" "example" {
  bucket = "example"
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bad_sse" {
  bucket = aws_s3_bucket.example.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.mykey.arn
      sse_algorithm     = "BLA"
    }
  }
}

resource "aws_s3_bucket_acl" "bad_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}
