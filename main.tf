resource "aws_ssm_parameter" "params" {
 count = length(var.params)
 name = var.params[count.index].name
 type = var.params[count.index].type
 value = var.params[count.index].value
  overwrite = true
  key_id = "841e1b80-4724-43b6-939b-ec575eebb2b6"
}

variable "params"{
 default = [
   { name = "roboshop.dev.frontend.catalogue_url", value = "https://catalogue-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.frontend.user_url", value = "https://user-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.frontend.cart_url", value = "https://cart-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.frontend.payment_url", value = "https://payment-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.frontend.shipping_url", value = "https://shipping-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.cart.redis_host", value = "redis-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },


   { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
   { name = "roboshop.dev.dispatch.amqp_host", value = "http://rabbitmq-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.dispatch.amqp_user", value = "roboshop", type = "String" },
   { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
   { name = "roboshop.dev.payment.user_host", value = "user-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
   { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
   { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
   { name = "roboshop.dev.user.redis_host", value = "redis-dev.devops2406.xyz", type = "String"},
   { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.devops2406.xyz/users", type = "String" },
   { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
   { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
   { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },



   #passwords
   { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:@docdb-dev-0.c2cprqmiz9av.us-east-1.docdb.amazonaws.com:27017/?tls=true&tlsCAFile=global-bundle.pem&retryWrites=false", type = "String" },
   {name = "roboshop.dev.catalogue.docdb_endpoint",value ="docdb-dev-0.c2cprqmiz9av.us-east-1.docdb.amazonaws.com", type = "String" },
   {name = "roboshop.dev.user.docdb_endpoint",value ="docdb-dev-0.c2cprqmiz9av.us-east-1.docdb.amazonaws.com", type = "String" },
   { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:@docdb-dev-0.c2cprqmiz9av.us-east-1.docdb.amazonaws.com:27017/users?tls=true&tlsCAFile=global-bundle.pem&retryWrites=false", type = "String" },

 ]
}