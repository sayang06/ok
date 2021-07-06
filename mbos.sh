#!/bin/bash
# ngrok-setup-script.sh
#
# Script to setup ngrok for ssh connection
#
# For Linux
#
# Requires wget, unzip, and screen installed

echo 'Create and ngrok account at ngrok.com'

echo 'Starting ngrok setup'

# Make ngrok directory
mkdir ~/ngrok
cd ~/ngrok

# Download ngrok
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip

# Unzip ngrok
unzip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip

# Authenticate with ngrok account
echo 'Input your ngrok account token'
read TOKEN
./ngrok authtoken 1uu6eKkz7rMbwFIzVENJ38CuJ15_3jVqc5KqbA5SJvjSHSEaa

# create screen session
screen -S ngrok

# How to detach screen session
echo 'Ctr + a + d to detach session'

# Start ngrok server
./ngrok tcp 22

# List screen sessions
screen -list
