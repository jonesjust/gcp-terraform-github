# GCP Terraform Starter

This repository provides an automated setup for deploying Google Cloud Platform (GCP) resources using Terraform and GitHub Actions. Currently, it deploys a Google Cloud Storage (GCS) bucket.

## How To Use This Repo

1. Fork this repository
2. Clone your forked repository to your local machine.
3. Create a GCP project
4. Create a cloud storage bucket with versioning enabled for your terraform state
5. Create a service account for github actions with required permissions
6. Create a key for the service account and store it in GitHub Secrets
7. Customize the `infra/terraform.tfvars` file with your gcp project id and cloud region
8. Customize the `infra/main.tf` file with your terraform state bucket id and desired resources
9. Commit and push your changes to trigger the GitHub Actions workflow

After pushing your changes, the GitHub Actions workflow will automatically run, using Terraform to deploy your specified resources to GCP.


If you find this project useful, consider buying me a coffee.

<a href='https://ko-fi.com/Q5Q811RI0C' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi1.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>
