resource "aws_instance" "app1" {
  ami                         = "${lookup(var.AmiLinux, var.region)}"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id                   = "${aws_subnet.PublicAZA.id}"
  vpc_security_group_ids      = ["${aws_security_group.WebServer.id}"]
  key_name                    = "Master-key"
  tags = {
    Name = "WebApp"
  }

  user_data = "${file("app-userdata.sh")}"
}
