provider "aws" {
  region = "us-east-1"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY
 }
resource "aws_instance" "web1" {
  ami         = "ami-0889a44b331db0194"
  instance_type = "t3.micro"
  
  }
resource "aws_instance" "web2" {
  ami         = "ami-0889a44b331db0194"
  instance_type = "t3.micro"
  }

  tags = {
    Name = "HelloWorld"
    
  }
}
