# Create EC2 Instance

resource "aws_instance" "training_server" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"

  tags = {
    Name = "TrainingServerInstance"
  }
}

# Show the Server IPV4 as Output

output "server_ipv4_address" {
  value = aws_instance.training_server.*.ipv4_address
}