#!/bin/bash

if ! test "$EUID" -eq 0; then
  echo "This script must be run as root"
  exit 1
fi

cd /opt/tomcat/bin

./startup.sh

if [ $? -eq 0 ]; then
  echo "Tomcat started successfully"
else
  echo "Failed to start Tomcat"
  exit 1
fi


