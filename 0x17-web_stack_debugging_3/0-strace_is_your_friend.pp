# Fix 500 error in Apache web server

exec {"fiw_wp":
provider => shell,
command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php'
}
