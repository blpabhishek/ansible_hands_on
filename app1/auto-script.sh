sudo yum -y install nginx
sudo echo  "#
# The default server
#

server {
    listen       8080 default_server;
    listen       [::]:8080 default_server;
    server_name  _;
    root         /usr/share/nginx/html;

    # Load configuration files for the default server block.
    include /etc/nginx/default.d/*.conf;

    location / {
    }

    error_page 404 /404.html;
        location = /40x.html {
    }

    error_page 500 502 503 504 /50x.html;
        location = /50x.html {
    }

}" > /etc/nginx/conf.d/default.conf
sudo service nginx start
sudo chkconfig nginx on 