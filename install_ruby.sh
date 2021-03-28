#!/bin/bash

echo "Update apt repo"
apt update

echo "Install ruby and env"
apt install -y ruby-full ruby-bundler build-essential