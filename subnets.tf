resource "aws_subnet" "PublicAZA" {
  vpc_id     = "${aws_vpc.mainvpc.id}"
  cidr_block = "${var.Subnet-Public-CIDR}"

  tags = {
    Name = "2a-PublicSubnet"
  }

  availability_zone = "${data.aws_availability_zones.available.names[0]}"
}

resource "aws_subnet" "PrivateAZA" {
  vpc_id     = "${aws_vpc.mainvpc.id}"
  cidr_block = "${var.Subnet-Private-CIDR}"

  tags = {
    Name = "2a-PrivateSubnet"
  }

  availability_zone = "${data.aws_availability_zones.available.names[1]}"
}


resource "aws_route_table_association" "PublicAZA" {
  subnet_id      = "${aws_subnet.PublicAZA.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "PrivateAZA" {
  subnet_id      = "${aws_subnet.PrivateAZA.id}"
  route_table_id = "${aws_route_table.private.id}"
}
