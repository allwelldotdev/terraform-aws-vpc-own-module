variable "vpc_config" {
  description = "Contains the VPC configuration. More specifically, the CIDR block and VPC name."
  type = object({
    cidr_block = string
    name       = string
  })

  validation {
    condition = can(cidrnetmask(var.vpc_config.cidr_block))

    error_message = "The cidr_block config option must contain a valid CIDR block."
  }
}

variable "subnet_config" {
  description = <<-EOF
  Accepts a map of subnet configurations. Each subnet configuration should contain:

  cidr_block : The CIDR block of the subnet
  az : The availability zone of the subnet
  public : Whether the subnet should be public or private (defaults to false).
  EOF
  type = map(object({
    cidr_block = string
    az         = string
    public     = optional(bool, false)
  }))

  validation {
    condition = alltrue([
      for config in values(var.subnet_config) : can(cidrnetmask(config.cidr_block))
    ])

    error_message = "The cidr_block config option must contain a valid CIDR block."
  }
}
