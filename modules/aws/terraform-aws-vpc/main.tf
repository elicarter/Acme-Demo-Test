resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  // Add other VPC configurations as needed
}

output "vpc_id" {
  value = aws_vpc.main.id
}