resource "aws_ecr_repository" "ECR" {
  name = var.ECR-Name
  image_tag_mutability = var.Mutability-tag
  image_scanning_configuration {
    scan_on_push = var.push
  }
}