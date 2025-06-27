variable "admin_username" {
  description = "Username for Windows VM"
  type        = string
}

variable "admin_password" {
  description = "Password for Windows VM"
  type        = string
  sensitive   = true
}