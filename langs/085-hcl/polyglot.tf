# polyglot-100 :: entry 085 :: HCL / Terraform
terraform {
  required_version = ">= 1.6.0"
}

variable "entries" {
  type        = number
  default     = 100
  description = "Number of language exhibits."
}

variable "target_bytes" {
  type    = number
  default = 4096
}

locals {
  naturals = range(1, 11)
  total    = sum(local.naturals)

  # Binet's formula, because HCL has no fold: F(n) = (phi^n - psi^n) / sqrt(5).
  sqrt5   = sqrt(5)
  phi     = (1 + sqrt(5)) / 2
  psi     = (1 - sqrt(5)) / 2
  fib_ten = floor((pow(local.phi, 10) - pow(local.psi, 10)) / local.sqrt5 + 0.5)

  greeting = "Hello from HCL!"
  checksum = local.total - local.fib_ten
}

output "greeting" {
  value = local.greeting
}

output "sum_one_to_ten" {
  value = local.total
}

output "counted_bytes" {
  value = var.entries * var.target_bytes
}
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & Config
# HCL -- entry 085 of 100 in the polyglot-100 archive. Family: Infra & 
