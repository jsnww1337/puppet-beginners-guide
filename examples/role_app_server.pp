# Be an app server
class role::app_server {
  include postgresql
  include apache
  include java
  include tomcat
  include my_app
}

node 'app1' {
  include role::app_server
}
