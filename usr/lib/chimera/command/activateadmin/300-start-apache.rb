#!/usr/bin/env ruby

root = ENV["ENV_ROOT"]
root = "" if root == nil
apache_config = root + "/etc/apache2/apache2.conf"
server_root = root + "/etc/apache2"
ENV["APACHE_CONFDIR"] = root + "/etc/apache2"
ENV["APACHE_HTTPD"] = root + "/usr/sbin/apache2"
ENV["APACHE_LOG_DIR"] = root + "/var/output/logs"
`mkdir -p #{ENV["APACHE_LOG_DIR"]}`
ENV["APACHE_RUN_DIR"] = root + "/var/run/apache2"
`mkdir -p #{ENV["APACHE_RUN_DIR"]}`
ENV["APACHE_LOCK_DIR"] = root + "/var/lock/apache2"
`mkdir -p #{ENV["APACHE_LOCK_DIR"]}`
ENV["APACHE_ENVVARS"] = "/dev/null"
ENV["APACHE_RUN_USER"] = "www-data"
ENV["APACHE_RUN_GROUP"] = "www-data"
command = "apache2ctl restart"
Kernel.system(command)
