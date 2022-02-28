#This file builds and image and runs it
#!/usr/bin/env bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
echo ${ROOT_DIR}

echo "**********************Building an IMAGE*******************"
docker build -t <image_name>/<tag_name> .

echo "**********************Running a CONTAINER*****************"
docker run --rm -v "${ROOT_DIR}:/opt/apache-jmeter-5.2.1/code" <image_name>/<tag_name> ${@}

echo "CONTAINER RAN SUCCESSFULLY"