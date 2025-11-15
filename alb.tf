resource "aws_lb" "app_lb" {
  name               = "my-app-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.public_sg.id]
  subnets            = [
    aws_subnet.public_a.id,
    aws_subnet.public_c.id
  ]

  enable_deletion_protection = false

  tags = {
    Name = "MyApp-ALB"
  }
}
