FROM wordpress:php8.0-fpm
RUN apt-get update \
 && apt-get install -y msmtp msmtp-mta \
 && apt-get clean

COPY ./msmtprc /etc/msmtprc
RUN chown www-data.www-data /etc/msmtprc
RUN chmod 600 /etc/msmtprc

COPY ./uploads.ini /usr/local/etc/php/conf.d
RUN chown www-data.www-data /usr/local/etc/php/conf.d/uploads.ini

RUN echo 'sendmail_path = "/usr/sbin/sendmail -t"' > /usr/local/etc/php/conf.d/mail.ini
