#!/usr/bin/env bash

echo
echo "GET HASH 64"
echo "==========="
echo

psql message_store -U message_store -x -c "SELECT hash_64('someStream-123');"

echo "= = ="
echo
