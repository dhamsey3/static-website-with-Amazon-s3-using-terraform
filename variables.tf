# Input variable definitions

variable "bucket_name" {
  description = "Name of the S3 bucket. Must be Unique across AWS"
  type        = string
  default = "terraform-website-bucket"
}

variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "eu-central-1"
}

variable "cf_alias" {
  description = "The alias (CNAME) for the CloudFront distribution, such as www.example.com"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {
    Terraform   = "true"
    Environment = "dev"
  }
}