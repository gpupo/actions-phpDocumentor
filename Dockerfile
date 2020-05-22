FROM php:7.4-cli
RUN curl -L https://github.com/gpupo/phpDocumentor/releases/download/v3.0.0-idependent/phpDocumentor.phar -o /usr/local/bin/phpDocumentor
COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh && chmod a+x /usr/local/bin/phpDocumentor
ENTRYPOINT ["/entrypoint.sh"]
