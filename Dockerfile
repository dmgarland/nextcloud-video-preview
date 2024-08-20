FROM nextcloud:26.0.13

RUN apt-get update && apt-get install --no-install-recommends -y ffmpeg

ENV NEXTCLOUD_UPDATE=1

WORKDIR /var/www/html
COPY --chown=www-data config config/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
