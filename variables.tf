variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Name tag for EC2 instance"
  type        = string
  default     = "Student-Terraform-EC2"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "Terraform-EC2-Lab"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "Lab"
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed to connect to SSH"
  type        = string

  validation {
    condition     = can(cidrhost(var.ssh_allowed_cidr, 0))
    error_message = "ssh_allowed_cidr must be a valid CIDR block."
  }
}
