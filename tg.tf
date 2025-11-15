resource "aws_lb_target_group" "app_tg" {
 name = "my-app-tg" 
 port = 80 
 protocol = "HTTP" 
 vpc_id = aws_vpc.aws-study-vpc.id 
 
health_check {
    path = "/" 
    interval = 30 
    timeout = 5 
    healthy_threshold = 2 
    unhealthy_threshold = 2 
    matcher = "200"

 }
}