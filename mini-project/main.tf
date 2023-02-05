resource "aws_instance" "zero" {
  ami           = "ami-830c94e3"
  instance_type = var.instance_type
  security_groups = ["elb-sg"]
  key_name = "terraform"

  tags = {
    Name = "mini_project_0"
  }
  
}

resource "aws_instance" "one" {
  ami           = "ami-830c94e3"
  instance_type = var.instance_type   
  security_groups = ["elb-sg"]
  key_name = "terraform"

  tags = {
    Name = "mini_project_1"
  }

}

resource "aws_instance" "two" {
  ami           = "ami-830c94e3"
  instance_type = var.instance_type   
  security_groups = ["elb-sg"]
  key_name = "terraform"

  tags = {
    Name = "mini_project_2"
  }

 provisioner "local-exec" {
  command = "echo [${aws_instance.zero.public_ip}, ${aws_instance.one.public_ip}, ${aws_instance.two.public_ip}] >> /ansible/inventory"
}
}


module "vpc" {
  source                       = "/home/ubuntu/mini-project/VPC"
  region                       = var.region
  project_name                 = var.project_name
  dnsSupport                   = var.dnsSupport
  dnsHostNames                 = var.dnsHostNames
  vpc_cidr                     = var.vpc_cidr
  public_subnet_az1_cidr       = var.public_subnet_az1_cidr
  public_subnet_az2_cidr       = var.public_subnet_az2_cidr
  public_subnet_az3_cidr       = var.public_subnet_az3_cidr
  private_app_subnet_az1_cidr  = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr  = var.private_app_subnet_az2_cidr
  private_app_subnet_az3_cidr  = var.private_app_subnet_az3_cidr
  private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
  private_data_subnet_az2_cidr = var.private_data_subnet_az2_cidr
  private_data_subnet_az3_cidr = var.private_data_subnet_az3_cidr

}
