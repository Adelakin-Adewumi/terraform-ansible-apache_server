# terraform-ansible-apache_server
This project shows how terraform was used to provision the following
1. 3 AWS instances
2. Security group
3. VPC
4. Route 53 to map a domain name
5. Target group
6. Subnets
7. Elastic load balancer.

The Ip address of the instance provisioned by terraform was sent was output.tf which echo the ip addresses to ansible inventory file. 
Anisble was used to install apache2 server into the 3 aws instances 
