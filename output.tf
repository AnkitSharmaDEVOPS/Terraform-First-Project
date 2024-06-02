output "Public_IP" {
  description = "Public IP"
  value       = aws_instance.EC2.public_ip
}
