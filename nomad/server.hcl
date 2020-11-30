log_level= "DEBUG"
data_dir= "/tmp/server1"
server {
	enabled = true
	bootstrap_expect=1
}

consul {
    address= "127.0.0.1:8500"
}

