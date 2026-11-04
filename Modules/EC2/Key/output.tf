output "Key-pair-name" {
  value = aws_key_pair.HM-key-pair.key_name
}

output "name" {
  value = tls_private_key.HM-key-pair.private_key_pem
  sensitive = true
}