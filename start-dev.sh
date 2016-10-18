#!/bin/bash

set -e

serve_pid=""
watch_pid=""

trap clean_up SIGHUP SIGINT SIGTERM

main() {
  start_caddy
  start_watcher
  while true; do sleep 1; done
}

start_caddy() {
  make -s serve &
  serve_pid=$!
}

start_watcher() {
  make -s watch &
  watch_pid=$!
}

clean_up() {
  kill $serve_pid
  kill $watch_pid
}

main $@
