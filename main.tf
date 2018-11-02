###Generating random pet for the new hostname
resource "random_pet" "server" {
  length    = "1"
  separator = "-"
}

###Output of the generated hostname
output "name" {
  value = "web-${var.lin-os}-${random_pet.server.id}"
}

variable "lin-os" {
  type        = "string"
  default     = "lin"
  description = "Name convention putting the OS in the name of the system"
}

###Module for generating hostname output with echo command  
module "first-module" {
  source = "./modules/first-module"
}