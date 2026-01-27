# Azure Terraform Landing Zone (Light)

## Project Overview
Een multi-environment Azure Landing Zone opgezet met Terraform.  
Laat zien hoe je herbruikbare modules bouwt, remote state beheert en veilige CI/CD pipelines configureert.

**Features:**
- Multi-environment: dev & prod
- Modules voor netwerk, storage en Key Vault
- Secrets veilig via Key Vault en `.tfvars`
- CI/CD met Azure DevOps
- Remote state per omgeving

---

## Repo Structure

project2/
├── modules/ # Herbruikbare Terraform modules
├── envs/
│ ├── dev/ # Dev omgeving
│ └── prod/ # Prod omgeving
├── .gitignore
└── README.md
