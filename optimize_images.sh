#!/bin/bash
if [ -n "$1" ]; then
  find $1 -iname *.jp*g -type f -print0 | xargs -0 jpegoptim -o --strip-all
else
  echo "Path is not set."
fi