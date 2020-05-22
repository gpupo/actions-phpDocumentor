#!/bin/sh
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

if [ -z "$1" ]; then
  ROOT_DIR="."
else
  ROOT_DIR="$1"
fi

echo "## Running phpDocumentor on ${ROOT_DIR}"
echo "PHP Version : ${PHP_FULL_VERSION}"

if [ ! -d "${ROOT_DIR}" ]; then
  echo "\nInvalid directory: ${ROOT_DIR}"
  echo "\n\n"
  exit 2
fi

cd ${ROOT_DIR};

if [ ! -f "phpdoc.xml" ] && [ ! -f "phpdoc.dist.xml" ]; then
  echo "\nPlease create ${ROOT_DIR}/phpdoc.xml file"
  echo "\n\n"
  exit 2
fi

php -d memory_limit=-1  /usr/local/bin/phpDocumentor
echo "Done."