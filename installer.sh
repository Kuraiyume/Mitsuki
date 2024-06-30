#!/bin/bash

if command -v apt-get &> /dev/null; then
	echo "Updating package lists..."
	sudo apt-get update
elif command -v yum &> /dev/null; then
	echo "Updating package lists..."
	sudo yum check-update
fi


python_dependencies=(
	"paramiko"
	"mysql-connector-python"
)

echo "Installing Python dependencies..."
sudo pip3 install "${python_dependencies[@]}"

required_packages=(
	"sshpass"
	"lftp"
	"mysql-server"
)

for package in "${required_packages[@]}"; do
	if ! command -v "$package" &> /dev/null; then
		echo "Installing $package..."
		if command -v apt-get &> /dev/null; then
			sudo apt-get install -y "$package"
		elif command -v yum &> /dev/null; then
			sudo yum install -y "$package"
		else
			echo "Error: Could not install $package. Please install it manually"
		fi
	fi
done

echo "Requirements and dependencies are installled! Enjoy Mitsuki!"


