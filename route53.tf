resource "aws_route53_record" "www" { 
  zone_id = "Z11NPE9KYP328N" 
  name    = "www.resolversgroup.com" 
  type    = "A" 
  ttl     = "300" 
  records = [aws_instance.web[0].public_ip,aws_instance.web[1].public_ip,aws_instance.web[2].public_ip]
} 
