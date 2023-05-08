# Create EC2 Instance

resource "aws_instance" "training_server_rhel" {
  ami           = "ami-016eb5d644c333ccb"
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    Name = "Server_rhel"
  }

  user_data = <<-EOF
            #!/bin/bash
            echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
            service sshd restart
            EOF

}

resource "aws_instance" "training_server_ubuntu" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    Name = "Server_ubuntu"
  }

  user_data = <<-EOF
            #!/bin/bash
            echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
            service sshd restart
            EOF
}

# Show the Server IPV4 as Output

output "public_ip_rhel" {
  value = aws_instance.training_server_rhel.public_ip
}

output "public_ip_ubuntu" {
  value = aws_instance.training_server_ubuntu.public_ip
}