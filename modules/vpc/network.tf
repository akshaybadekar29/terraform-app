provider "aws" {
  region  = "us-east-1"
}

resource "aws_vpc" "vpc" {
  cidr_block       = "${var.vpc_cidr}"


}


resource "aws_subnet" "websubnet" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "${var.web_subnet_cidr}"

  tags = {
    Name = "web_subnet"
  }
}


output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "subnet_id" {
  value = "${aws_subnet.websubnet.id}"
}
