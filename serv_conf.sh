function configure {
  #Install C/C++ compiler
  sudo apt install build-essential

  #Install node, npm
  sudo apt install nodejs
  sudo apt install npm

  #Install nvm & change npm to latest lts
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash 
  nvm install --lts 

  #Install & configure nginx
  sudo apt install nginx

  #Lets Encrypt SSL-certification
  sudo snap install core
  sudo snap refresh core
  sudo snap install --classic certbot
  sudo ln -s /snap/bin/certbot /usr/bin/certbot
  sudo certbot --nginx
  sudo certbot renew --dry-run
}
