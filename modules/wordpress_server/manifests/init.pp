class wordpress_server {
  include wrappers::apache
  include wrappers::mysql
  include wrappers::wordpress

}
