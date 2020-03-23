FROM php:7.4-cli

LABEL version="1.0"
LABEL repository="https://github.com/chindit/actions-phpunit-symfony"
LABEL homepage="https://github.com/chindit/actions-phpunit-symfony"
LABEL maintainer="David Lumaye <littletiger58@gmail.com>"

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
