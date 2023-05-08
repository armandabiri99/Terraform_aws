# Create EC2 Instance

resource "aws_instance" "training_server_rhel" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "TrainingServerInstance_rhel"
  }
}

resource "aws_instance" "training_server_ubuntu" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "TrainingServerInstance_ubuntu"
  }
}

# Show the Server IPV4 as Output

output "public_ip_rhel" {
  value = aws_instance.training_server_rhel.public_ip
}

output "public_ip_ubuntu" {
  value = aws_instance.training_server_ubuntu.public_ip
}