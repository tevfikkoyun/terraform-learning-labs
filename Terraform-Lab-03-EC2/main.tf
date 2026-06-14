terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "lab_sg" {
  name        = "lab-03-sg"
  description = "Lab 03 Security Group"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Lab03-SG"
  }
}

resource "aws_instance" "lab_server" {
  ami                    = "ami-0c02fb55956c7d316"
  instance_type		 = var.instance_type
  vpc_security_group_ids = [aws_security_group.lab_sg.id]

  tags = {
    Name = "Lab03-EC2"
  }
}

output "ec2_public_ip" {
  value = aws_instance.lab_server.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.lab_server.public_dns
}