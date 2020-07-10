variable "aws_region" {
  type                     = string
}

variable "aws_profile" {
  type                     = string
}

variable "public_key" {
  type                     = string
}

provider "aws" {
  region                   = var.aws_region
  profile                  = var.aws_profile
}

# kms key
resource "aws_key_pair" "fullstack-key" {
  key_name   = "fullstack-key"
  public_key = var.public_key
}

# fullstack cloudformation
resource "aws_cloudformation_stack" "fullstack" {
  name                    = "fullstack"
  capabilities            = ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"]
  parameters              = {}
  template_body           = file("${path.module}/fullstack.yml")
  depends_on             = [aws_key_pair.fullstack-key]
}
