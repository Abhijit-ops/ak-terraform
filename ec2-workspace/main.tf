locals {

   instance_name = "${terraform.workspace}-instance"
}


resource "aws_instance" "myec2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "kalita_key"
  count = 2
  tags = {
    Name = local.instance_name
  }

}

output "instance_arn" {
  value = aws_instance.myec2[*].arn
}