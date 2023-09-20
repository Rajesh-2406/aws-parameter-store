resource "aws_ssm_parameter" "params" {
 count      = length(var.params)
 name       = var.params[count.index].name
 type       = var.params[count.index].type
 value      = var.params[count.index].value
  overwrite = true
  key_id    = "841e1b80-4724-43b6-939b-ec575eebb2b6"
}

variable "params"{
 default  = [
   { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devops2406.xyz/", type = "String" },
   { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.vxqnh7.clustercfg.use1.cache.amazonaws.com", type = "String" },
   { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },


   { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
   { name = "roboshop.dev.dispatch.amqp_host", value = "http://rabbitmq-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.dispatch.amqp_user", value = "roboshop", type = "String" },
   { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.payment.cart_port", value = "80", type = "String" },
   { name = "roboshop.dev.payment.user_host", value = "user-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.payment.user_port", value = "80", type = "String" },
   { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
   { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.devops2406.xyz", type = "String" },
   { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
   { name = "roboshop.dev.user.redis_host", value = "elasticache-dev.vxqnh7.clustercfg.use1.cache.amazonaws.com", type = "String"},
/*
   { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.devops2406.xyz/users", type = "String" },
*/
   { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
   { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
   { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
   { name = "roboshop.dev.mysql.endpoint", value = "rds-dev.cluster-c2cprqmiz9av.us-east-1.rds.amazonaws.com", type = "String" },



   #passwords
   { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
   { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev-0.c2cprqmiz9av.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&tlsCAFile=global-bundle.pem&retryWrites=false", type = "SecureString" },
   { name = "roboshop.dev.catalogue.docdb_endpoint",value ="docdb-dev.cluster-c2cprqmiz9av.us-east-1.docdb.amazonaws.com", type = "String" },

   { name = "roboshop.dev.user.docdb_endpoint",value ="docdb-dev.cluster-c2cprqmiz9av.us-east-1.docdb.amazonaws.com", type = "String" },
   { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev-0.c2cprqmiz9av.us-east-1.docdb.amazonaws.com:27017/users?tls=true&tlsCAFile=global-bundle.pem&retryWrites=false", type = "SecureString" },



##

{ name = "roboshop.prod.frontend.catalogue_url", value = "http://catalogue-prod.devops2406.xyz/", type = "String" },
{ name = "roboshop.prod.frontend.user_url", value = "http://user-prod.devops2406.xyz/", type = "String" },
{ name = "roboshop.prod.frontend.cart_url", value = "http://cart-prod.devops2406.xyz/", type = "String" },
{ name = "roboshop.prod.frontend.payment_url", value = "http://payment-prod.devops2406.xyz/", type = "String" },
{ name = "roboshop.prod.frontend.shipping_url", value = "http://shipping-prod.devops2406.xyz/", type = "String" },
{ name = "roboshop.prod.cart.redis_host", value = "elasticache-prod.vxqnh7.clustercfg.use1.cache.amazonaws.com", type = "String" },
{ name = "roboshop.prod.cart.catalogue_host", value = "catalogue-prod.devops2406.xyz", type = "String" },
{ name = "roboshop.prod.cart.catalogue_port", value = "80", type = "String" },


{ name = "roboshop.prod.catalogue.mongo", value = "true", type = "String" },
{ name = "roboshop.prod.dispatch.amqp_host", value = "http://rabbitmq-prod.devops2406.xyz", type = "String" },
{ name = "roboshop.prod.dispatch.amqp_user", value = "roboshop", type = "String" },
{ name = "roboshop.prod.payment.cart_host", value = "cart-prod.devops2406.xyz", type = "String" },
{ name = "roboshop.prod.payment.cart_port", value = "80", type = "String" },
{ name = "roboshop.prod.payment.user_host", value = "user-prod.devops2406.xyz", type = "String" },
{ name = "roboshop.prod.payment.user_port", value = "80", type = "String" },
{ name = "roboshop.prod.payment.amqp_host", value = "rabbitmq-prod.devops2406.xyz", type = "String" },
{ name = "roboshop.prod.payment.amqp_user", value = "roboshop", type = "String" },
{ name = "roboshop.prod.shipping.cart_endpoint", value = "cart-prod.devops2406.xyz", type = "String" },
{ name = "roboshop.prod.shipping.db_host", value = "mysql-prod.devops2406.xyz", type = "String" },
{ name = "roboshop.prod.user.mongo", value = "true", type = "String" },
{ name = "roboshop.prod.user.redis_host", value = "elasticache-prod.vxqnh7.clustercfg.use1.cache.amazonaws.com", type = "String"},
/*
   { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.devops2406.xyz/users", type = "String" },
*/
{ name = "roboshop.prod.docdb.username", value = "roboshop", type = "String" },
{ name = "roboshop.prod.rabbitmq.amqp_user", value = "roboshop", type = "String" },
{ name = "roboshop.prod.mysql.username", value = "roboshop", type = "String" },
{ name = "roboshop.prod.mysql.endpoint", value = "rds-prod.cluster-c2cprqmiz9av.us-east-1.rds.amazonaws.com", type = "String" },



#passwords
{ name = "roboshop.prod.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
{ name = "roboshop.prod.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },
{ name = "roboshop.prod.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
{ name = "roboshop.prod.mysql.password", value = "roboshop123", type = "SecureString" },
{ name = "roboshop.prod.docdb.password", value = "roboshop123", type = "SecureString" },
{ name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod-0.c2cprqmiz9av.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&tlsCAFile=global-bundle.pem&retryWrites=false", type = "SecureString" },
{ name = "roboshop.prod.catalogue.docdb_endpoint",value ="docdb-prod.cluster-c2cprqmiz9av.us-east-1.docdb.amazonaws.com", type = "String" },

{ name = "roboshop.prod.user.docdb_endpoint",value ="docdb-prod.cluster-c2cprqmiz9av.us-east-1.docdb.amazonaws.com", type = "String" },
{ name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod-0.c2cprqmiz9av.us-east-1.docdb.amazonaws.com:27017/users?tls=true&tlsCAFile=global-bundle.pem&retryWrites=false", type = "SecureString" },

]
}