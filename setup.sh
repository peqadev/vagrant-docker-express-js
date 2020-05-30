set -e

###################
# Variables #######
###################
export USER=vagrant

###################
# Installing zsh ##
###################
# sudo apt-get update -y
# sudo apt-get install -y zsh
# sudo apt-get install -y powerline fonts-powerline
# git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# chsh -s /bin/zsh
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
# echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

###########################
# Installing Docker #######
###########################
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#################################
# Installing Docker Compose #####
#################################
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker $USER

#################################
# Installing Node JS ############
#################################
curl -sL https://deb.nodesource.com/setup_14.x | bash -
sudo apt-get install -y nodejs

#################################
# Installing Tools ##############
#################################
sudo apt-get install -y vim tree htop git