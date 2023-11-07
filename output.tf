
# Output for ALB DNS name/link
output "aws_lb" {
  value = aws_lb.application-lb.id
}

# Output for VPC ID
output "aws_vpc" {
  value = aws_vpc.vpc1.id
}

# Output for EC2 security group IDs
output "aws_security_group" {
  value = [aws_security_group.ec2.id, aws_security_group.ec2.id]
}

# Output for ALB security group ID
output "aws_lb_sg" {
  value = aws_lb.application-lb.arn
}

# Output for EC2 instance IDs
output "aws_instance_one" {
  value = aws_instance.ec2-one.id
}
output "aws_instance_two" {
  value = aws_instance.ec2-two.id
}

# Output for public subnet IDs
output "public_subnet_ids" {
  value = [aws_subnet.public_subnet1.id, aws_subnet.public_subnet2.id]
}

# Output for private subnet IDs
output "private_subnet_ids" {
  value = [aws_subnet.private_subnet1.id, aws_subnet.private_subnet2.id]
}
output "ssh_commands" {
  description = "SSH commands to access EC2 instances"
  value = [
    "ssh -i keypair.pem ec2-user@${aws_instance.ec2-one.private_ip}",
    "ssh -i keypair.pem ec2-user@${aws_instance.ec2-two.private_ip}",
  ]
}