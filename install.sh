# Prepare to add PHP7.3 repository
sudo apt -y install lsb-release apt-transport-https ca-certificates 
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php7.3.list

# Install php and dependencies
sudo apt update
sudo apt install -y php7.3 php7.3-common php7.3-cli
sudo apt install -y php7.3-fpm php7.3-json php7.3-mysql php7.3-zip php7.3-gd \
php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath

# Install Composer
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
