output "instance_id" {
  description = "WordPress EC2 instance ID"
  value       = aws_instance.wordpress.id
}

output "public_ip" {
  description = "Public IP of the WordPress server"
  value       = aws_instance.wordpress.public_ip
}

output "wordpress_url" {
  description = "Public URL for WordPress"
  value       = "http://${aws_instance.wordpress.public_ip}"
}
