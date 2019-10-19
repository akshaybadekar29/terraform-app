variable "region" {

default = "us-east-1"

}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "subnets" {
type = "list"

default =  ["10.0.1.0/24", "10.0.2.0/24","10.0.3.0/24","10.0.4.0/24","10.0.5.0/24"]
  
}



data "aws_availability_zones" "azs" {

}