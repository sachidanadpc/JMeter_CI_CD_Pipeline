#!/bin/bash

# Install Java
sudo apt-get install -y default-jre

# Add Jenkins repo key
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Add Jenkins repo to the system
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package index
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins
