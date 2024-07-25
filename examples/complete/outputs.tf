output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "A map of objects containing each public VPC subnet's ID and availability zone."
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "A map of objects containing each VPC subnet's ID and availability zone of private subnets."
  value       = module.vpc.private_subnets
}
