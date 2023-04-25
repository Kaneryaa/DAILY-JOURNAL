provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-007855ac798b5175e"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "devops"
  vpc_security_group_ids = ["sg-0a24c6ba78aa29fb8"]
  tags = {
    Name = "college-project"
  }

}