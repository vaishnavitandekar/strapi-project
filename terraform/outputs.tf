output "instance_public_ip" {
  value       = aws_instance.strapi.public_ip
  description = "Public IP of Strapi Server"
}

output "instance_public_dns" {
  description = "Public DNS name of the Strapi EC2 instance"
  value       = aws_instance.strapi.public_dns
}

output "strapi_url" {
  value       = "http://${aws_instance.strapi.public_ip}:1337"
  description = "URL to access Strapi"
}
