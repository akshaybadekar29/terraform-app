resource "aws_instance" "web" {
  
  ami           = "${var.webAmiId}"
  instance_type = "${var.webInstanceType}"
  subnet_id     = "${var.subnet_id}"

}