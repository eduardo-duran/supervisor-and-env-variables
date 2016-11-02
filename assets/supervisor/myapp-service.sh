#!/bin/bash

function shutdown() {
  echo "shutting down now"
  exit 0;
}

trap 'shutdown' EXIT

echo "this is the super variable $SUPER"

echo "$SUPER" > /tmp/super

while true; do
  sleep 600
done
