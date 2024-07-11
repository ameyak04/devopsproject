provider "aws" {
    region = "us-east-1"

}

resource "aws_instance" "this" {
  ami                     = "ami-04b70fa74e45c3917" #put ami_id according to available ones through your console 
  instance_type           = "t2.micro"

  tags = {
    Name = "TFJenkinsInstance"
  }
}

# output "instance_ip" {
#   value = aws_instance.this.public_ip
# }

# terraform {
#   required_providers {
#     docker = {
#       source  = "kreuzwerker/docker"
#       version = "~> 3.0.1"
#     }
#   }
# }

# provider "docker" {}

# resource "docker_image" "nginx" {
#   name         = "nginx"
#   keep_locally = false
# }

# resource "docker_container" "nginx" {
#   image = docker_image.nginx.image_id
#   name  = "tutorial"

#   ports {
#     internal = 80
#     external = 8000
#   }
# }
