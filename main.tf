# Create EC2 Instance

resource "aws_instance" "training_server" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "TrainingServerInstance"
  }
}

# Show the Server IPV4 as Output

output "public_ip" {
  value = aws_instance.training_server.public_ip
}