provider "aws" {
  region = var.region
  #profile = var.aws_profile
}

resource "aws_instance" "example" {
  ami           = var.ami-name
  instance_type = var.instance-size
  subnet_id     = var.private-subnet1
  key_name      = var.key-pair
  iam_instance_profile = var.ec2-role
  security_groups = [var.security-group]
  user_data = file("${path.module}/app1-install.sh")
  root_block_device {
    volume_size = 8
    volume_type = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "Demo-App-${terraform.workspace}"
  }
}
