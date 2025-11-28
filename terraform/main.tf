terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "strapi_sg" {
  name        = "strapi-sg"
  description = "Strapi security group"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow Strapi"
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow outgoing"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "strapi" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.strapi_sg.name]

  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install -y nodejs npm git
    npm install -g yarn pm2

    cd /home/ubuntu
    git clone ${var.repo_url}
    cd ${var.project_folder}

    # Create .env
    cat <<EOT > .env
${var.env_content}
EOT

    yarn install
    yarn build
    pm2 start "yarn start" --name "strapi"
  EOF

  tags = {
    Name = "Strapi-Server"
  }
}
