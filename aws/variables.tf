variable "aws_region" {
  description = "AWS region for the infrastructure"
  type        = string
  default     = "eu-west-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}