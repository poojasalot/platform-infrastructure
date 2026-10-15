output "artifact_bucket_name" {
  description = "Name of the engineering artifact bucket"
  value       = aws_s3_bucket.engineering_artifacts.bucket
}