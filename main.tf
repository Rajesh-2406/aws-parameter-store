resource "aws_ssm_parameter" "params" {
 count = length(var.params)
 name = var.params[count.index].name
 type=var.params[count.index].type
 value = var.params[count.index].value
}

variable "params"{
 default = [
   { name = "roboshop.frontend.catalogue_url", value = "http://catalogue.devops2406.xyz:8080/", type = "String" },
   { name = "roboshop.frontend.user_url", value = "http://user.devops2406.xyz:8080/", type = "String" },
   { name = "roboshop.frontend.cart_url", value = "http://cart.devops2406.xyz8080/", type = "String" },
   { name = "roboshop.frontend.payment_url", value = "http://payment.devops2406.xyz:8080/", type = "String" },
   { name = "roboshop.frontend.shipping_url", value = "http://shipping.devops2406.xyz:8080/", type = "String" },
   { name = "roboshop.cart.redis_host", value = "redis.devops2406.xyz", type = "String" },
   { name = "roboshop.cart.catalogue_host", value = "catalogue.devops2406.xyz", type = "String" },
   { name = "roboshop.cart.catalogue_port", value = "8080", type = "String" },
   { name = "roboshop.catalogue.mongo", value = "true", type = "String" },
   { name = "roboshop.catalogue.mongo_url", value = "mongodb://mongodb.devops2406.xyz:27017/catalogue", type = "String" },
   { name = "roboshop.payment.cart_host", value = "cart.devops2406.xyz", type = "String" },
   { name = "roboshop.payment.cart_port", value = "8080", type = "String" },
   { name = "roboshop.payment.user_host", value = "user.devops2406.xyz", type = "String" },
   { name = "roboshop.payment.user_port", value = "8080", type = "String" },
   { name = "roboshop.payment.amqp_host", value = "rabbitmq.devops2406.xyz", type = "String" },
   { name = "roboshop.payment.amqp_user", value = "roboshop", type = "String" },
   { name = "roboshop.shipping.cart_endpoint", value = "cart.devops2406.xyz:8080", type = "String" },
   { name = "roboshop.shipping.db_host", value = "mysql.devops2406.xyz", type = "String" },
   { name = "roboshop.user.mongo", value = "true", type = "String" },
   { name = "roboshop.user.redis_host", value = "redis.devops2406.xyz", type = "String" },
   { name = "roboshop.user.mongo_url", value = "mongodb://mongodb.devops2406.xyz:27017/users", type = "String" },
   { name = "roboshop.dispatch.amqp_host", value = "rabbitmq.devops2406.xyz", type = "String" },
   { name = "roboshop.dispatch.amqp_user", value = "roboshop", type = "String" },


   { name = "roboshop.payment.ampq_pass", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dispatch.amqp_pass", value = "roboahop123", type = "SecureString" },

 ]
}