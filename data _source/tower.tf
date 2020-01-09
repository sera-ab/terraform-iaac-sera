
#Problem statement:  
#Currently, our automation tool Ansible has to be licensed and few tasks has to be automated 
#using ansible towers Scheduling option. Make sure ansible is available at tower.company.com  

 #Goal: 
#Install ansible tower on the  latest Centos from official centos AMI.  
#Enable Extra Packages of Enterprise Linux.  

#Security Concerns. 
#Users should be able to login with ssh instead of password, and SSL certificate has to be attached to toweR 


#solution:

#Go to Region us-east-1
#provider "aws" { 
    #region = "us-east-1

#Search for centos Latest with the owner
data "aws_ami" "centos" { 
    filter { 
        name = "root-device-type" 
        values = ["ebs"] 
        } 

    filter { 
    name = "centos7" 
    values = ["CentOS Linux 7 x86_64 HVM EBS *"] 


    most_recent = true 
    owners = ["679593333241"] 
}

# Show the AMI Id
output "ami" { 
    value = data.aws_ami.centos.id
} 

resource "aws_key_pair" "$towerkey" { 
  key_name   = "${var.key_name}" 
  public_key = "file(var.key_name_location)
} 

resource "aws_instance" "tower" {
  ami           = data.aws_ami.centos.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.towerkey.key_name
  provisioner "remote-exec" { 
    connection { 
      host = self.public_ip
      type = "ssh" 
      user = "centos" 
      private_key = file("~/.ssh/id_rsa")
      }
    inline = [ 
      "sudo yum install -y epel-release", 
       ] 
  } 


  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_route53_record" "www" { 
  zone_id = "Z11NPE9KYP328N" 
  name = "www.example.com" 
  type = "A" 
  ttl = "300" 
  records = ["aws_instance.web.public_ip"] 
} 