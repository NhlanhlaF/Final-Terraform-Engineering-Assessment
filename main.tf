terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5.0"
    }
  }
}
variable "Learner_name" {
  description = "Name of the learner completing this practical engineering exercise."
  type        = string
}
variable "Programme_name" {
  description = "Name of programme completed by the learner."
  type        = string
}
variable "Completion_statement" {
  description = "Completion statement of this practical engineering exercise."
  type        = string
}

resource "local_file" "completion_record" {
  filename = "${path.module}/completion-record.txt"
  content  = "Terraform lab completed by ${var.Learner_name}\n The name of the programme ${var.Programme_name}\n Completion Statement ${var.Completion_statement}"
}