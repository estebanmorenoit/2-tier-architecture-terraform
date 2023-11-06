# Output the DNS name of the Application Load Balancer (ALB).
output "alb_dns_name" {
  value = module.load_balancer.alb_dns
}
