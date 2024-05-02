resource "aws_lb" "load_balancer" {
  name               = "my-load-balancer"
  internal           = false
  load_balancer_type = "application"
  // Add other Load Balancer configurations as needed
}

output "dns_name" {
  value = aws_lb.load_balancer.dns_name
}