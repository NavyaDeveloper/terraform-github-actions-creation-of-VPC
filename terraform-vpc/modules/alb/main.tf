resource "aws_lb" "albb" {
  name               = "albb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.sg_id]
  subnets            = var.subnets

}

#listeners
resource "aws_lb_listener" "listeners" {
  load_balancer_arn = aws_lb.albb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}

#Target group
resource "aws_lb_target_group" "tg" {
  name        = "tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
}

#target group attachments
resource "aws_lb_target_group_attachment" "tga" {
  count = length(var.instances)
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = var.instances[count.index]
  port             = 80
}