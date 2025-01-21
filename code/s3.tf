provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "3c74e311-f7b5-4571-a416-2912d4e04c85"
    git_commit           = "5a0956aeb7ef5380151487bb86e977141ede84ff"
    git_file             = "code/s3.tf"
    git_last_modified_at = "2025-01-21 17:47:54"
    git_last_modified_by = "107870334+mnlfrst@users.noreply.github.com"
    git_modifiers        = "107870334+mnlfrst"
    git_org              = "mnlfrst"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
