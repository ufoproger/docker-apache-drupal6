# Docker image with Apache and PHP 5.3.10 running on Ubuntu 12.04 (i386)

> This image uses i386 CPU architecture! Original image is [iiiepe/docker-apache-drupal6](https://github.com/iiiepe/docker-apache-drupal6).

Docker image with Apache optimized to run Drupal 6 websites. Uses PHP 5.3 because Drupal 6 has some issues with newer versions of PHP.

Includes:

- Composer
- Drush
- PHP uploadprogress
- APC

### Build

		$ make build

		or

		$ docker build --tag=yourname/apache-drupal6 .

### Use
The website will be loaded from /var/www so make sure you add your files there.

		$ docker run -d -v application:/var/www -p 80:80 ufoproger/apache-drupal6

#### With fig

		web:
		  image: ufoproger/apache-drupal6
		  volumes:
		    - application:/var/www
		    - logs:/var/log/supervisor
		  ports:
		    - "8000:80"