output "bucket_name" {
    value = aws_s3_bucket.b.bucket
}

output "sec_group" {
    value = aws_security_group.allow_tls.name
}

output "wordpress" {
    value = aws_route53_record.www.name
}


output "IPs" {
    value = aws_instance.web.*.public_ip
}