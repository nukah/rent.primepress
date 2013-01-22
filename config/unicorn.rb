worker_processes 2
user "arenda", "arenda"

working_directory "/var/www/rent.primepress"
listen "/var/www/rent.primepress/system/unicorn.sock", :backlog => 256

timeout 60

pid "/var/www/rent.primepress/system/unicorn.pid"
stderr_path "/var/www/rent.primepress/system/unicorn_error.log"
stdout_path "/var/www/rent.primepress/system/unicorn.log"

#preload_app true

#before_fork do |server, worker|
#  defined?(ActiveRecord::Base) and
#    ActiveRecord::Base.connection.disconnect!
#end

#after_fork do |server, worker|
#  defined?(ActiveRecord::Base) and
#    ActiveRecord::Base.establish_connection
#end
