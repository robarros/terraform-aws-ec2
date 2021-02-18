resource "aws_instance" "app" {
  ami               = var.ami
  instance_type     = var.size
  availability_zone = var.az
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    env  = "dev"
    Name = "app"
  }
}