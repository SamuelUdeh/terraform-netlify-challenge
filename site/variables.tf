variable "site_name" {
  description = "The Netlify site name as it appears in Netlify (UI)."
  type        = string
}

variable "repo_path" {
  description = "GitHub org/repo (e.g., SamuelUdeh/netlify-tf-hcp)."
  type        = string
}

variable "repo_branch" {
  description = "Git branch Netlify should deploy from."
  type        = string
  default     = "main"
}
