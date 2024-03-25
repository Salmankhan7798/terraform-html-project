resource "aws_vpc" "mainvpc" {
  cidr_block = "${var.vpc-fullcidr}"

  #### this 2 true values are for use the internal vpc dns resolution
  #enable_dns_support   = true
  #enable_dns_hostnames = true

  tags = {
    Name = "MainVPC-Ohio"
  }
}
