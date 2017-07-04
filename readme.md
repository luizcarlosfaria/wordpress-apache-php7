# This image is based on [wordpress](https://hub.docker.com/_/wordpress/) official image with minor changes

## Features
* Base on php:7-apache
* Latest Wordpress
* PHP.ini custom values
* Use same code base for configuration and setup

# Supported tags and respective ```Dockerfile``` links

* [```4.8```](https://github.com/docker-gallery/wordpress-apache-php7/blob/v4.8/Dockerfile), [```latest```](https://github.com/docker-gallery/wordpress-apache-php7/blob/v4.8/Dockerfile) [(Dockerfile)](https://github.com/docker-gallery/wordpress-apache-php7/blob/v4.8/Dockerfile) ( php:7-apache / Wordpress 4.8)
* [```4.6.1```](https://github.com/docker-gallery/wordpress-apache-php7/blob/v4.6.1/Dockerfile), [(Dockerfile)](https://github.com/docker-gallery/wordpress-apache-php7/blob/v4.6.1/Dockerfile) ( php:7.0.10-apache / Wordpress 4.6.1)
* [```4.4.1```](https://github.com/docker-gallery/wordpress-apache-php7/blob/v4.4.1/Dockerfile) [(Dockerfile)](https://github.com/docker-gallery/wordpress-apache-php7/blob/v4.4.1/Dockerfile) ( php:7.0.2-apache / Wordpress 4.4.1)

## Based on [wordpress](https://hub.docker.com/_/wordpress/) official image
All usage documentation still under [wordpress](https://hub.docker.com/_/wordpress/) official image. 
This image has no changes on usage of base image. Use [official wordpress image docs](https://hub.docker.com/_/wordpress/) to see how to work with this image.

## Additions
```
opcache.memory_consumption=512
opcache.interned_strings_buffer=8
opcache.max_accelerated_files=8000
opcache.revalidate_freq=60
opcache.fast_shutdown=1
opcache.enable_cli=1
post_max_size = 50M
upload_max_filesize = 50M
```
