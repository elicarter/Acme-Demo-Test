resource "aws_instance" "ec2" {
  count         = var.instance_count
  ami           = "ami-0c55b159cbfafe1f0" // Amazon Linux 2
  instance_type = "t2.micro"
  // Add other EC2 configurations as needed
}

output "instance_ids" {
  value = aws_instance.ec2[*].id
}