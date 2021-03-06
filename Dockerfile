FROM php:7.0-apache
COPY ./tweetledee /var/www/html
COPY ./config/apache-site.conf /etc/apache2/sites-enabled/000-default.conf 
ENV PORT 80
RUN ln -sf /etc/apache2/mods-available/headers.load /etc/apache2/mods-enabled/headers.load
ENTRYPOINT []
CMD env && rm -Rf /etc/apache2/mods-enabled/mpm_event.* && ls -l /etc/apache2/mods-enabled/ && echo $PORT && sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf && docker-php-entrypoint apache2-foreground
