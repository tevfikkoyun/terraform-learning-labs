terraform {
  required_version = ">= 1.0"
}

variable "message" {
  type        = string
  description = "Content of the local file"
}

resource "local_file" "hello" {
  filename = "hello.txt"
  content  = var.message
}

output "file_name" {
  value = local_file.hello.filename
}

output "file_content" {
  value = local_file.hello.content
}