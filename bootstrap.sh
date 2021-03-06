echo
echo '-------> Bootstrap Getting started'
apt-get update

# Basic Linux Stuffss
apt-get install -y curl

echo
echo '-------> Docker'
sh -c "$(curl -fsSL https://get.docker.com)"
usermod -aG docker vagrant

echo
echo '-------> Docker Compose'
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo
echo '-------> Bootstrap has completed'
