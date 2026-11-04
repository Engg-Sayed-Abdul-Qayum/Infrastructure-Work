resource "aws_security_group" "HM-SG" {
  name        = var.Security-Group-Name
  description = "Shared security group for project EC2 instances."
  vpc_id      = var.VPC-SG-ID

  ingress {
    description = "HTTP access"
    from_port   = var.SG-inbound-http-port
    to_port     = var.SG-inbound-http-port
    protocol    = var.SG-Inbound-Protocol
    cidr_blocks = [ var.SG-CIDR-Blocks ]
  }

  ingress {
    description = "HTTPS access"
    from_port   = var.SG-inbound-https-port
    to_port     = var.SG-inbound-https-port
    protocol    = var.SG-Inbound-Protocol
    cidr_blocks = [ var.SG-CIDR-Blocks ]
  }

  ingress {
    description = "SSH access"
    from_port   = var.SG-inbound-ssh-port
    to_port     = var.SG-inbound-ssh-port
    protocol    = var.SG-Inbound-Protocol
    cidr_blocks = [ var.SG-CIDR-Blocks ]
  }

   ingress {
    description = "Jenkins access"
    from_port   = var.SG-inbound-Jenkins-port
    to_port     = var.SG-inbound-Jenkins-port
    protocol    = var.SG-Inbound-Protocol
    cidr_blocks = [ var.SG-CIDR-Blocks ]
  }

  egress {
    description = "Allow outbound traffic."
    from_port   = var.SG-outbound-port
    to_port     = var.SG-outbound-port
    protocol    = var.SG-outbound-port
    cidr_blocks = [ var.SG-CIDR-Blocks ]
  }

  tags = {
    Name = var.Security-Group-Name
  }
}
