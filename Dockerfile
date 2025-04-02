FROM nextcloud:29.0.4

RUN apt-get update && apt-get install --no-install-recommends -y ffmpeg && \
    apt-get clean && \
    rm -rf /usr/share/doc && \
    rm -rf "/var/lib/apt/lists/*"

ENV NEXTCLOUD_UPDATE=1

WORKDIR /var/www/html
COPY --chown=www-data config config/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
