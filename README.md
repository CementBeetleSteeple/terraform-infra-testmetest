# terraform-infra-testmetest

AWS infrastructure managed with Terraform.

## Architecture
- VPC with public/private subnets (3 AZs)
- ECS Fargate cluster with auto-scaling
- RDS PostgreSQL Multi-AZ
- ElastiCache Redis
- CloudFront CDN + S3

## Usage

```bash
terraform workspace select prod
terraform plan -var="environment=prod"
terraform apply -auto-approve
```
