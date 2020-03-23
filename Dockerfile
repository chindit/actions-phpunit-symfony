FROM php:7.4-cli

LABEL version="1.0"
LABEL repository="https://github.com/chindit/actions-phpunit-symfony"
LABEL homepage="https://github.com/chindit/actions-phpunit-symfony"
LABEL maintainer="David Lumaye <littletiger58@gmail.com>"

RUN curl -L https://getcomposer.org/composer-stable.phar -o /composer

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh && chmod a+x /github/workspace/composer
ENTRYPOINT ["/entrypoint.sh"]
