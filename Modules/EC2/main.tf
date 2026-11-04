resource "aws_instance" "Server" {
  ami = var.ec2-IAM-ID
  instance_type = var.ec2-type
  subnet_id = var.Subnet-Public-ID
  vpc_security_group_ids = [ var.ec2-security-group ]
  key_name = var.ec2-key-name
  associate_public_ip_address = true
  tags = {
    Name = var.ec2-name
  }
}