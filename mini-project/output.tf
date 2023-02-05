output "public_ip" {
  value = [${aws_instance.zero.public_ip}, ${aws_instance.one.public_ip}, ${aws_instance.two.public_ip}]
} 

