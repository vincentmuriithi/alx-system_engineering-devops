#increase the amount of traffic that an nginx server can handle

#Increase the ULIMIT of the default file
exec {"fix--for--nginx":
command => 'sed -i "s/15/4096/" /etc/default/nginx/',
path => '/usr/local/bin:/bin/'
} ->

#Restart nginx
exec {'restart-nginx':
command => 'nginx restart',
path => 'etc/init.d/'
}
