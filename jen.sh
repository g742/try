#!/bin/bash

# Update system
sudo apt update -y
sudo apt upgrade -y

# Install Java (Jenkins requires Java)
sudo apt install -y fontconfig openjdk-17-jre

# Add Jenkins repository key and repo
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update and install Jenkins
sudo apt update -y
sudo apt install -y jenkins

# Enable and start Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Print status
sudo systemctl status jenkins --no-pager

echo "Jenkins installation completed!"
echo "Access Jenkins at: http://<your_server_ip>:8080"
echo "Initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

