output "public_ip" {
  description = "Public IP address of the capstone server"
  value       = aws_instance.capstone_server.public_ip
}
