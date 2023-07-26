resource "aws_ssm_parameter" "params" {
 count = length(var.params)
 name = var.params[count.index].name
 type=var.params[count.index].type
 value = var.params[count.index].value
}

variable "params"{
 default = [
    { name = "roboshop.frontend.catalogue_url,value ="http://catalogue.devops2406,xyz" , type= "string},
    { name = "roboshop.frontend.user_url, value="http://user.devops2406,xyz" , type="string},
    { name = "roboshop.frontend.cart_url,value ="http://cart.devops2406,xyz" , type ="string},
    { name = "roboshop.frontend.payment_url,value ="http://payment.devops2406,xyz" , type = "string"},
    { name = "roboshop.frontend.shipping_url,value ="http://shipping.devops2406,xyz", type ="string"},
   ]
}