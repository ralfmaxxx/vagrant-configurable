## Vagrant configurable

### How to use?

Just open and adjust `vagrant/config/services.sh` which looks like:
```
 # Installs nginx, leave empty if you don't want to provide Nginx
 NGINX="1.4.6"
 
 # Installs php, leave empty if you don't want to provide PHP
 PHP="7.0.7"
 
 # true/false - php composer installation
 PHP_COMPOSER=true
 
 # Installs node and npm following version delivered by setting value,
 # leave empty if you don't want to install it.
 NODEJS="4.4.5"
```
 
After that just run `vagrant up`.

### How to import this for my own repository?

Best option is to use:
```
composer create-project ralfmaxxx/vagrant-configurable
```
