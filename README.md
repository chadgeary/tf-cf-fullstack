# Reference
An exercise with terraform to create a complete service stack via CloudFormation, building:
- VPC+Route Tables+Subnets+Security Groups
- Instances behind an ELB with IAM Profile, SSH Keys, and AutoScaling for HA.
- S3 Buckets for automated SSM deployment of included Ansible Playbooks

# Deploy
```
# begin terraform
terraform init
terraform apply

# answer terraform variables
var.aws_profile
  Enter a value: default

var.aws_region
  Enter a value: us-east-2

var.public_key
  Enter a value: ssh-rsa AAAAB4NzaC1yc2EAAAADAQABAAABAQCNsxnMWfrG4SoLr4uJMavf44YkM6wCbdO7X6uBvRU8oh1W+A/Nd/jie2tc4UpwDnwS4w6MAfnu8B1gE9lzcgTu1FFf0us6zIWYR/mSoOFKlTiaI7Uaqkc+YzmVw/fy1iFxDDeanfoc0vuQvPr+LsxUL6UY4ko4tynCSp7zgVpot/OppqdHl6J+DYhNubm8ess6cugTustUnoDmJdo2ANQENeBUNkBPXUnMO1iulfNb6GnwWJ0n6TRRLGSu1gya2wMLeo1rBJFcb6ngVLMVHiKgwBy/svUQreR8R+fpVW+Q4rx6RSAltLROUONn0SF2BvvJUueqxpAIaA2rU4MSI69P
```
