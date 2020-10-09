resource "aws_ecr_repository" "example1" {
  name                 = "example1"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
