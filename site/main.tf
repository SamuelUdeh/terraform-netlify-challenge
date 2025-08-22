terraform {
  required_version = ">= 1.6.0"

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2" 
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }

  # Remote state in HCP Terraform (Terraform Cloud)
  cloud {
    organization = "Samley"       
    workspaces {
      name = "portfolio-site-workspace"     
    }
  }
}

