resource "aws_instance" "Server" {
  ami = var.ec2-IAM-ID
  instance_type = var.ec2-type
  subnet_id = var.Subnet-Public-ID
  vpc_security_group_ids = [ var.ec2-security-group ]
  key_name = var.ec2-key-name
  associate_public_ip_address = true
  user_data = <<-USERDATA
    #!/bin/bash
    sudo apt update
    mkdir -p /home/ubuntu/Test
    cd /home/ubuntu/Test
    echo "Hello, Im from Terraform Block :)" > Welcome.txt
   USERDATA
  user_data_replace_on_change = true
  tags = {
    Name = var.ec2-name
  }
}
