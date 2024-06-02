resource "aws_instance" "EC2" {
 ## count = "${var.NOI}"
  tags = {
    ##Name = "EC2 2nd day - ${count.index}"
    Name   = "Jenkins Server"
  }
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = var.security_groups
  key_name        = "TF_practice"
  ##user_data       = "$file(jenkins.sh)"
  user_data = var.user_data
}
