variable subnet_public {
  type        = string
  default     = "10.0.1.0/24"
  description = "CIDR Block"
}

variable vpc_id {}

variable subnet_private {
  type= string
  default     = "10.0.2.0/24"
  description = "CIDR Block"
}

