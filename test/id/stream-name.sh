#!/usr/bin/env bash

set -e

echo
echo "ID - FROM STREAM NAME"
echo "====================="
echo

source test/_controls.sh

stream_name=$(stream-name)

echo "Stream Name:"
echo $stream_name
echo

psql message_store -U message_store -x -c "SELECT id('$stream_name');"

echo "= = ="
echo
