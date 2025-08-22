# Netlify default subdomain is <site_name>.netlify.app
output "live_url" {
  value       = "https://${var.site_name}.netlify.app"
  description = "Your site default URL"
}

output "repo" {
  value       = "https://github.com/${var.repo_path}"
  description = "GitHub repository"
}
