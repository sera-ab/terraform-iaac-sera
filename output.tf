output "bucket_name" {
  value = aws_s3_bucket.b.bucket
}


output "sec_group" {
  value = aws_security_group.allow_ssh.name
}


output "key_name" {
  value = aws_key_pair.deployer.key_name
}


output "wordpress_username" {
  value = "same_username"
}


output "wordpress_password" {
  value = "same_password"
}


output "wordpress" {
  value = aws_route53_record.www.name
}
