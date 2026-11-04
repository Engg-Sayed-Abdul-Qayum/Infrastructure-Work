output "Server-ID" {
  value = aws_instance.Server.id
}

output "Server-Public-IP" {
  value = aws_instance.Server.public_ip
}

output "Server-Privite-IP" {
  value = aws_instance.Server.private_ip
}

output "Server-Type" {
  value = aws_instance.Server.instance_type
}