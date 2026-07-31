resource "aws_instance" "master" {

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.sony


  tags = {
    Name = "k8s-master"
  }
}

resource "aws_instance" "worker" {

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.sony


  tags = {
    Name = "k8s-worker"
  }
}
