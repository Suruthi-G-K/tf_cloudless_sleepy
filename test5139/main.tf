# Create an arbitrary local resource
data "template_file" "test" {
  template = "Template Error: Get \"http://localhost/api/v1/namespaces/suruthi\": dial tcp [::1]:80: connect: connection refused"
}

resource "null_resource" "sleep" {
  triggers = {
    uuid = uuid()
  }

  provisioner "local-exec" {
    command = "sleep Error: Get \"http://localhost/api/v1/namespaces/suruthi\": dial tcp [::1]:80: connect: connection refused"
  }
}
