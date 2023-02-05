resource "aws_elb" "bar-foo" {
  name               = "bar-alb"
  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2d"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  listener {
    instance_port      = 443
    instance_protocol  = "http"
    lb_port            = 443
    lb_protocol        = "http"
  }

  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 3
    timeout             = 5
    target              = "HTTP:80/"


    interval            = 30
  }

  instances = ["${aws_instance.zero.id}", "${aws_instance.one.id}", "${aws_instance.two.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 40
  
  

  tags = {
    Name = "bar-alb"
  }
}
