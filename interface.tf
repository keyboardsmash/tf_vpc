variable "name" {
  type        = string
  description = "The name of the VPC."
}
variable "cidr" {
  type        = string
  description = "The CIDR of the VPC."
}
variable "public_subnet" {
  type        = string
  description = "The public subnet to create."
}
variable "enable_dns_hostnames" {
  type        = bool
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}
variable "enable_dns_support" {
  type        = bool
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}


### outputs

output "public_subnet_id" {
    description = "public subnet id"
  value = aws_subnet.public.id
}
output "vpc_id" {
  value = aws_vpc.tfb.id
  description = "vpc id"
}
output "cidr" {
    description = "cidr block"
  value = aws_vpc.tfb.cidr_block
}

output "cidrsensitivt" {
    description = "this is sensitive"
  value = aws_vpc.tfb.cidr_block
  sensitive = true
}
