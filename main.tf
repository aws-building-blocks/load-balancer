resource "aws_lb" "load_balancer" {
  name               = var.load_balancer_name
  load_balancer_type = var.load_balancer_type
  internal           = var.is_internal
  security_groups    = var.security_group_ids
  subnets            = var.subnet_ids

  tags = merge(var.load_balancer_tags, {
    Name = var.load_balancer_name
  })
}
