#!/bin/bash

set -e

docker_image=gabesullice/decoupled-drupal
docker_volumes="-v $PWD/css:/usr/src/app/css -v $PWD/js:/usr/src/app/js -v $PWD/resources:/usr/src/app/resources -v $PWD/slides:/usr/src/app/slides -v $PWD/templates:/usr/src/app/templates"
docker_ports="-p 9000:9000 -p 35729:35729"

main () {
  docker run -it $docker_volumes $docker_ports $docker_image
}

main $@
