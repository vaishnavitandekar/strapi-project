variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "ami_id" {
  type        = string
  description = "Ubuntu AMI ID"
}

variable "instance_type" {
  type    = string
  default = "t2.large"
}

variable "key_name" {
  type        = string
  description = "EC2 SSH Key Name"
}

variable "repo_url" {
  type        = string
  description = "GitHub repo URL"
}

variable "project_folder" {
  type        = string
  description = "Folder name after git clone"
}

variable "env_content" {
  type        = string
  description = "Environment variables content"
}
