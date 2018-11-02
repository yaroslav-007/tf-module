###Module generating hostname output with echo command  
resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo This generates name the following hostname  web-${var.lin-os}-${random_pet.server.id}"
  }
}
