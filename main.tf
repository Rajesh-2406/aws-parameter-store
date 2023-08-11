resource "aws_ssm_parameter" "params" {
 count = length(var.params)
 name = var.params[count.index].name
 type=var.params[count.index].type
 value = var.params[count.index].value
}

variable "params"{
 default = [
   { name = "roboshop.frontend.catalogue_url", value = "http://catalogue-dev.devops2406.xyz:8080/", type = "String" },
   { name = "roboshop.frontend.user_url", value = "http://user-dev.devops2406.xyz:8080/", type = "String" },
   { name = "roboshop.frontend.cart_url", value = "http://cart-dev.devops2406.xyz8080/", type = "String" },
   { name = "roboshop.frontend.payment_url", value = "http://payment-dev.devops2406.xyz:8080/", type = "String" },
   { name = "roboshop.frontend.shipping_url", value = "http://shipping-dev.devops2406.xyz:8080/", type = "String" },

 ]
}