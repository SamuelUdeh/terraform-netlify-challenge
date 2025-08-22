# 🚀 Terraform Challenge – Netlify Site + HCP Terraform Remote State

This project deploys a simple static website on **Netlify** using **Terraform**, with the Terraform state securely stored in **HCP Terraform (Terraform Cloud)**.  

It is built as part of the **Terraform Challenge** and demonstrates a reproducible, team-ready workflow.

---

## 📌 Project Overview
- Host a static site on **Netlify**
- Manage infrastructure as code with **Terraform**
- Store Terraform state remotely in **HCP Terraform**
- Keep credentials and secrets out of the repo
- Provide outputs for easy replication

Live Site 👉 [comforting-fudge-57ff13.netlify.app](https://comforting-fudge-57ff13.netlify.app)  
Repository 👉 [SamuelUdeh/terraform-netlify-challenge](https://github.com/SamuelUdeh/terraform-netlify-challenge)

---

## 🛠 Prerequisites

Before you begin, ensure you have:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) `>= 1.6.0`
- A [Netlify](https://app.netlify.com/) account + Personal Access Token (PAT)
- A [GitHub](https://github.com/) repository (to link with Netlify)
- An [HCP Terraform](https://app.terraform.io/) (Terraform Cloud) organization + workspace
- Git installed locally

---

## ⚙️ Setup Steps

### 1. Clone the repo

```
git clone https://github.com/SamuelUdeh/terraform-netlify-challenge.git
cd terraform-netlify-challenge
```


### 2. Create a Netlify Site (UI one-time setup)

In Netlify → New site from Git

- Connect your GitHub repo

- Set Publish directory = site

- Leave the build command empty (pure HTML)

Take note of the generated site name (e.g., comforting-fudge-57ff13).

### 3. Configure HCP Terraform Remote State

- Create an Organization and a Workspace in HCP Terraform

- Add the following environment variable in workspace settings:

- NETLIFY_TOKEN → your Netlify PAT (Sensitive = ON)

### 4. Update Terraform Config

Edit versions.tf to use your HCP Terraform org/workspace:

cloud {
  organization = "your-org"
  workspaces {
    name = "portfolio-site-workspace"
  }
}


- Update terraform.tfvars with your details:

- site_name   = "comforting-fudge-57ff13"   # Netlify site name

- repo_path   = "SamuelUdeh/terraform-netlify-challenge"

- repo_branch = "main"

### 5. Run Terraform

```
terraform init
terraform plan
terraform apply
```


When prompted:

Do you want to perform these actions in the workspace "portfolio-site-workspace"?
  Enter a value: yes


✅ Success looks like:

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:
- live_url = "https://comforting-fudge-57ff13.netlify.app"

- repo = "https://github.com/SamuelUdeh/terraform-netlify-challenge"

📂 Project Structure
```
├── site/                  # Static frontend files
│   └── index.html
├── main.tf                # Resources & data sources
├── variables.tf           # Input variables
├── outputs.tf             # Outputs (live_url, repo)
├── providers.tf           # Provider config (Netlify)
├── versions.tf            # Terraform + HCP remote backend
├── terraform.tfvars       # Site-specific inputs
└── .gitignore             # Ignore local state & secrets
```
📸 Screenshot

Add your Terraform apply screenshot here for submission.

🔑 Key Points

- Secrets (NETLIFY_TOKEN) are never stored in the repo — only in the HCP Terraform workspace.

- Remote state stored in HCP Terraform ensures collaboration and state safety.

- Re-runnable: anyone with the repo + correct workspace/env vars can do terraform init/plan/apply.

✍️ Blog Post

I also wrote a blog post about this project, describing:

- Why I chose Netlify + HCP Terraform

- How the integration works

- Lessons learned from the challenge

👉 [Add your blog link here]

✅ Deliverables Checklist

 - Public GitHub repo with Terraform + site code

 - Live site on Netlify

 - Remote state configured in HCP Terraform

 - Screenshot of a successful Terraform apply

 - README with setup instructions

 Blog post (optional but recommended)

🎉 Challenge completed!


---

