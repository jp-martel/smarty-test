FROM php:7.2-apache
RUN apt-get update &&\
    a2enmod rewrite