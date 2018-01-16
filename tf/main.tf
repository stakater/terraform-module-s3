provider "aws" {
  region = "${var.region}"
}

data "aws_availability_zones" azs { }

data "aws_caller_identity" "current" { }

terraform {
  backend "s3" {
  }
}

module "s3-bucket" {
  source = "github.com/stakater/blueprint-storage-aws.git//modules/s3?ref=v0.1.0"
  name = "${data.aws_caller_identity.current.account_id}-${var.environment}-${var.bucket_name}"
}