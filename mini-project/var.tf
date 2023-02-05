variable "aws_region" {
    default = "us-west-2"
    description = "set aws region"
}

variable "instance_type" {
  default = "t2.micro"
  description = "create t2 micro instance"
}

variable "dnsSupport" {
    default = true
}
variable "dnsHostNames" {
    default = true
}
variable "region" {
}
variable "project_name" {
  
}
variable "vpc_cidr" {
  
}
variable "public_subnet_az1_cidr" {
  
}
variable "public_subnet_az2_cidr" {
  
}
variable "public_subnet_az3_cidr" {
  
}
variable "private_app_subnet_az1_cidr" {
  
}
variable "private_app_subnet_az2_cidr" {
  
}
variable "private_app_subnet_az3_cidr" {
  
}
variable "private_data_subnet_az1_cidr" {
  
}
variable "private_data_subnet_az2_cidr" {
  
}
variable "private_data_subnet_az3_cidr" {
  
}


variable "alb_security_group_id" {
  default = "sg-01b22f1ab7e83e4e8"
}
variable "public_subnet_az1_id" {
  default = "subnet-08e6d6458ac0394e5 / public_subnet_az1"
}
variable "public_subnet_az2_id" {
  default = "subnet-0e17eb4e2128290a7 / public_subnet_az2"
}
variable "public_subnet_az3_id" {
  default = "subnet-0456e54f4f0bd3bcc / public_subnet_az3"
}
variable "vpc_id" {
  default = "vpc-055d0106c9e9468c9"
}
variable "domain_name" {
  default = "adelakinadewumi.name.ng"
  description = "domain name"
}

variable "record_name" {
  default = "www"
  description = "sub domain name"
}


variable "zone_id" {
  default = "bar-alb-1844813931.us-west-2.elb.amazonaws.com"
  description = "zone id"
}
