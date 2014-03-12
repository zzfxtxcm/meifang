worker_processes 6
timeout 30

APP_PATH = File.expand_path("../..", __FILE__)
working_directory APP_PATH

listen 5000, :tcp_nopush => false
listen "/tmp/unicorn.sock", :backlog => 64

stderr_path APP_PATH + "/log/unicorn.stderr.log"
stdout_path APP_PATH + "/log/unicorn.stdout.log"

pid APP_PATH + "/tmp/pids/unicorn.pid"
