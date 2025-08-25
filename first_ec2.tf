provider "aws" {
  region     = "us-east-1"
  access_key = "accesskey"
  secret_key = "secretkey"
}

resource "aws_instance" "terraform-ec2" {
  ami           = "ami-00ca32bbc84273381" # Amazon Linux 2 AMI US East-1 North Virginia
  instance_type = "t3.micro"

  tags = {
    Name = "MyFirstTerraformEC2"
  }
}