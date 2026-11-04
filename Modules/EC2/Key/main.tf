resource "tls_private_key" "HM-key-pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "HM-key-pair" {
  key_name   = var.key_pair_name
  public_key = tls_private_key.HM-key-pair.public_key_openssh
  tags = {
    Name = var.key_pair_name
  }
}

resource "local_sensitive_file" "HM-privite-pem-key" {
  content = tls_private_key.HM-key-pair.private_key_pem
  filename = "${path.module}/${var.key_pair_name}.pem"
  file_permission = "400"
}