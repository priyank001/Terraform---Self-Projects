provider "aws" {
  region     = "us-east-1"
  # profile    = "zeal-east-1-profile"
  profile    = "terraformUser"
}

resource "aws_instance" "terraform-ec2" {
  ami           = "ami-00ca32bbc84273381" # Amazon Linux 2 AMI US East-1 North Virginia
  instance_type = "t3.micro"

  # Specify the subnet_id for the instance
  # subnet_id     = "subnet-05495b8009e96720c" # TODO: Replace with a valid subnet ID from your default VPC

  tags = {
    Name = "terraform-ec2"
  }
}