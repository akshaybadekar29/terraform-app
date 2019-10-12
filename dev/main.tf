provider "aws" {
  region  = "us-east-1"
}
module "appvpc" {
  source = "../modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  web_subnet_cidr = "192.168.1.0/24"  
}

module "my_ec2" {
  source        = "../modules/ec2"
  webAmiId      = "ami-0b69ea66ff7391e80"
  webInstanceType = "t2.micro"
  subnet_id     = "${module.appvpc.subnet_id}"
}
