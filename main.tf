resource "aws_ssm_parameter" "params" {
 count = length(var.params)
 name = var.params[count.index].name
 type=var.params[count.index].type
 value = var.params[count.index].value
}

variable "params"{
 default = [
   { name = "roboshop.frontend.catalogue_url", value = "catalogue-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.frontend.user_url", value = "user-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.frontend.cart_url", value = "cart-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.frontend.payment_url", value = "payment-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.frontend.shipping_url", value = "shipping-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.cart.redis_host", value = "redis-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.cart.catalogue_host", value = "catalogue-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.cart.catalogue_port", value = "8080", type = "String" },
   { name = "roboshop.catalogue.mongo", value = "true", type = "String" },
   { name = "roboshop.catalogue.mongo_url", value = "mongodb://mongodb-dev.devops2406.xyz:27017/catalogue", type = "String" },
   { name = "roboshop.dispatch.amqp_host", value = "http://rabbitmq-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dispatch.amqp_user", value = "roboshop", type = "String" },
   { name = "roboshop.payment.cart_host", value = "cart-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.payment.cart_port", value = "8080", type = "String" },
   { name = "roboshop.payment.user_host", value = "user-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.payment.user_port", value = "8080", type = "String" },
   { name = "roboshop.payment.amqp_host", value = "rabbitmq-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.payment.amqp_user", value = "roboshop", type = "String" },
   { name = "roboshop.shipping.cart_endpoint", value = "cart-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.shipping.db_host", value = "mysql-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.user.mongo", value = "true", type = "String" },
   { name = "roboshop.user.redis_host", value = "redis-dev.devops2406.xyz", type = "string"},
   { name = "roboshop.user.mongo_url", value = "mongodb://mongodb-dev.devops2406.xyz/users", type = "String" },


   { name = "roboshop.payment.amqp_pass", value = "roboshop123", type = "SecureString" },

 ]
}