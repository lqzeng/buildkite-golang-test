#!/bin/bash

echo "script started"
docker run golang --dp 8080:8080 golang-hello
echo "script finished"