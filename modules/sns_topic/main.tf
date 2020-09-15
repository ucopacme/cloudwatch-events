data "template_file" this {
  template = file("${path.module}/templates/email-sns-stack.json.tpl")

  vars = {
    display_name  = var.display_name
    email_address = var.email_address
    protocol      = var.protocol
  }
}

resource "aws_cloudformation_stack" "this" {
  name          = var.stack_name
  template_body = data.template_file.this.rendered
}
