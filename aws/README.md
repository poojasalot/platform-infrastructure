# AWS Infrastructure with Terraform

## Objective

Demonstrate Infrastructure as Code (IaC) using Terraform
to define a reusable AWS artifact storage resource.

## Architecture

Terraform provisions an S3 bucket with versioning enabled.

## Engineering Decisions

- Infrastructure is defined declaratively.
- Variables support environment-specific configuration.
- Outputs expose resource information.
- S3 versioning supports recovery from accidental object changes.
- Resource tags support ownership and cost allocation.

## Validation

- `terraform fmt`
- `terraform init -backend=false`
- `terraform validate`

## Production Considerations

Before production use, add remote state storage and state locking,
least-privilege IAM, encryption, public-access blocking, lifecycle
policies, monitoring, and an approved infrastructure deployment pipeline.

No AWS resources need to be created to validate this configuration.