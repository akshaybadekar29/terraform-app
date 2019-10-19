provider "aws" {
  region = "${var.region}"
}

resource "aws_vpc" "main" {
  cidr_block       = "${var.cidr_block}"
  tags = {
    Name = "WebApp"
  }
}

resource "aws_subnet" "subnet" {
  count = "${length(data.aws_availability_zones.azs.names)}"
  vpc_id= "${aws_vpc.main.id}"
  cidr_block = "${element(var.subnets,count.index)}"
  tags ={
      Name = "subnet-${count.index+1}"
  }
}


