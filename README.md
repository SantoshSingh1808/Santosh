# Terraform Infrastructure – Modular Approach

## 📌 Overview
This repository follows a **modular Terraform architecture** to provision and manage cloud infrastructure in a **scalable, reusable, and maintainable** way.

The design separates:
- **Root module** → orchestration layer
- **Child modules** → reusable infrastructure components

This approach is ideal for **multi-environment (dev/test/prod)** setups and large-scale cloud deployments.

---

## 🧱 Architecture Approach

### 1️⃣ Root Module
- Entry point of Terraform execution
- Calls multiple child modules
- Manages:
  - Provider configuration
  - Backend configuration
  - Environment-specific variables
  - Inter-module dependencies

### 2️⃣ Child Modules
- Encapsulate specific resources
- Reusable across environments
- Follow **single responsibility principle**

Examples:
- Networking module (VNet, Subnets, NSG)
- Compute module (VM / AKS / App Service)
- Database module
- Identity module

---

## 📂 Repository Structure

```text
.
├── environments
│   ├── dev
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   └── backend.tf
│   └── prod
│       ├── main.tf
│       ├── variables.tf
│       ├── terraform.tfvars
│       └── backend.tf
│
├── modules
│   ├── network
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── compute
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── database
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── providers.tf
├── versions.tf
└── README.md

📤 Outputs & Dependency Management
        Child modules expose values using output
        Root module consumes outputs for chaining dependencies

🌍 Multi-Environment Strategy
        Each environment has:
        Separate state file
        Separate backend
        Separate terraform.tfvars
        Benefits:
        No state conflicts
        Environment isolation
        Safer production deployments

🔐 State Management
        Remote backend (Azure Storage / S3 / GCS)
        State locking enabled
        Versioned state files        

🧠 Best Practices Followed
        Modular design
        DRY principle
        Explicit outputs
        Variable-driven configuration
        Version constraints
        Remote backend
        Clear separation of concerns
🧪 Recommended Enhancements
        Terratest for module testing
        Terraform fmt & validate in CI/CD
        Policy-as-Code (OPA / Sentinel)
        GitOps-based promotion

👨‍💻 Author
Maintained by Sandeep Singh        