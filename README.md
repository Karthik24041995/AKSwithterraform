# AKS-terraform-pipeline

# AKS with Terraform and CI/CD

## 📘 Description
This project provisions an Azure Kubernetes Service (AKS) cluster using Terraform, deploys a sample application, and sets up CI/CD pipelines with Azure DevOps for:
- Terraform security scanning (Checkov)
- Infrastructure provisioning
- Docker image build & push to Azure Container Registry (ACR)
- Kubernetes deployment to AKS
- Optional Grafana dashboard export

---

## 🔧 Prerequisites
- Terraform (latest version)
- Azure CLI
- Docker
- kubectl
- Azure DevOps account
- GitHub repository

CI/CD Pipeline
Explain how to use azure-pipelines.yml:
- Connect GitHub repo to Azure DevOps
- Configure service connections for Azure and ACR
- Run pipeline stages:
  1. Terraform security scan (Checkov)
  2. Terraform plan & apply
  3. Docker build & push
  4. Deploy to AKS
