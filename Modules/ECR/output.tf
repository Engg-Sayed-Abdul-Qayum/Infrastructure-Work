output "ECR-Repo-Name" {
  value = aws_ecr_repository.ECR.name
}

output "ECR-Repo-URL" {
  value = aws_ecr_repository.ECR.repository_url
}
