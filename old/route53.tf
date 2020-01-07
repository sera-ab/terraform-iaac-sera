resource "aws_route53_record" "www" { 
  zone_id = "ZETFH8WW2PRFP" 
  name    = "garaj6.net" 
  type    = "A" 
  ttl     = "300" 
  records = [aws_instance.web[0].public_ip,aws_instance.web[1].public_ip,aws_instance.web[2].public_ip] 
} 