#!/bin/bash

set -e

echo "Зупинка контейнерів..."
sudo aa-remove-unknown 
