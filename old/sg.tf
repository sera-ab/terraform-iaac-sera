resource "aws_security_group" "allow_tls" { 
  name        = "allow_tls" 
  description = "Allow SSH inbound traffic" 
  vpc_id      = "vpc-010b2c2926bc8ee6c" 

  ingress { 
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

} 
  egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
} 