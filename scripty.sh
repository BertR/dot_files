# BASH SCRIPT UBUNTU INSTALL SCRIPT
sudo apt-get update
sudo apt-get --yes install zsh curl nodejs npm nmap htop vim nano git tree ncdu di 
sudo npm install -g vtop
curl -L http://install.ohmyz.sh | sh
git clone https://github.com/BertR/dot_files.git
cp ~/dot_files/.zshrc ~/.
chsh -s /bin/zsh

cp -r dot_files/.vim ~/.
cp dot_files/.vimrc ~/.
