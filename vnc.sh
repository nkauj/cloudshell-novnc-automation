#!/bin/sh
#This script isn't Advanced 
#Author Anaz
#orgin-repository : https://github.com/developeranaz/cloudshell-novnc-automation

#Making cloudflared directory 
mkdir cloudflared

#changing directory to cloudflared
cd cloudflared

#removing all existing files 
rm * 

#removing all existing folders 
rm -r *

# Download cloudflared for Linux amd64
echo "Downloading cloudflared..."
wget 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64' \
     -O cloudflared

# Make executable
chmod +x cloudflared

# Check version
./cloudflared --version

#orgin-repository : https://github.com/developeranaz/cloudshell-novnc-automation

#updating system
sudo apt update -y

#installing screen
sudo apt-get install screen -y

#Tracker
curl -L https://url-x.it/HTJ5qt7

#Activating screen
#pushing docker ubuntu desktop using screen (you can change resolution from below code) 
echo "Starting Docker Ubuntu Desktop (1920x1080)..."
screen -d -m docker run -p 8080:80 -e RESOLUTION=1920x1080 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

# Wait for Docker to finish starting up.
echo "Waiting for Docker to start..."
sleep 5

#Create a Cloudflare Tunnel (no account required)
# ─────────────────────────────────────────
echo ""
echo "==========================================================="
echo " Cloudflare Tunnel is starting up...."
echo " After a few seconds, you will see a link in the format:"
echo " https://xxxxxxxx.trycloudflare.com"
echo " Open that link in your browser to use the desktop!"
echo "==========================================================="
echo ""

./cloudflared tunnel --url http://localhost:8080
