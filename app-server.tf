#Create EC2 Instance
resource "aws_instance" "appserver1" {
  ami                    = "ami-0bef6cc322bfff646"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.app-sg.id]
  subnet_id              = aws_subnet.web-subnet-1.id
  user_data              = file("install_apache.sh")

  tags = {
    Name = "App Server"
    team = "config management"
  }

}

resource "aws_instance" "appserver2" {
  ami                    = "ami-0bef6cc322bfff646"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1b"
  vpc_security_group_ids = [aws_security_group.app-sg.id]
  subnet_id              = aws_subnet.web-subnet-2.id
  key_name = "aws-key-pair"
  user_data              = file("install_apache.sh")

  tags = {
    Name = "App Server"
  }

}