#!/bin/bash

set -e

echo "Run контейнерa..."
docker run -p 8080:8080 my-webapp:7.0
