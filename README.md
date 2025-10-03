# RF Analyzer

## Prereqs

```
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add Docker repo
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update and install
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin git

# Add your user to the docker group
sudo usermod -aG docker $USER

# Refresh group membership (log out and back in, or run:)
newgrp docker

#	For Samsung T7, edit the Pi boot cmdline and add usb-storage.quirks=04e8:4001:u at the end.
sudo nano /boot/firmware/cmdline.txt

# Reboot
sudo reboot
```

##
