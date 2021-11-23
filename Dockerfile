FROM umutphp/php-docker-images-for-ci:7.4

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
