output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.ec2.id
}

output "instance_name" {
  description = "EC2 instance name"
  value       = aws_instance.ec2.tags["Name"]
}

output "public_ip" {
  description = "EC2 public IP address"
  value       = aws_instance.ec2.public_ip
}

output "private_ip" {
  description = "EC2 private IP address"
  value       = aws_instance.ec2.private_ip
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.ec2_sg.id
}
