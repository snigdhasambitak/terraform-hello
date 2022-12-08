terraform {
  required_version = ">= 1.1.0"
  cloud {
    hostname = "app.terraform.io"
    organization = "terraform-controller-demo"

    workspaces {
      name = "example"
    }
  }
}

variable "subject" {
   type = string
   default = "SWAT"
   description = "Subject to hello"
}

output "terraform_hello" {
  value = "Hello, ${var.subject}!"
}

