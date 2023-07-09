data "template_file" "sam_template" {
  template = file("../samTemplate.yml.tpl")
  vars = {
    my_lambdarole              = aws_iam_role.lambda.arn
    my_app_name                = var.app_name
    my_layer_arn               = var.request_layer_arn
    my_ssm_parameter_store_key = var.ssm_parameter_store_key

  }
}

resource "local_file" "sam_template" {
  filename = "${path.module}/../samTemplate.yml"
  content  = data.template_file.sam_template.rendered
}
