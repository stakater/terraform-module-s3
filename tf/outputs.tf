output "s3-bucket-name" {
  value = "${module.s3-bucket.bucket_name}"
}

output "s3-bucket-arn" {
  value = "${module.s3-bucket.arn}"
}