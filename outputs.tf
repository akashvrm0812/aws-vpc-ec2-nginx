output "nginx_server_public_ip" {
    description = "Public IP address of the Nginx server"
  value = aws_instance.nginxserver.public_ip
}

output "instance_url" {
    description = "The url to access the Nginx server"
  value = "http://${aws_instance.nginxserver.public_ip}"
}