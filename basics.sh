sudo apt -y update
sudo apt -y upgrade
sudo apt -y install git
sudo apt -y install vim
sudo apt -y install xclip
sudo apt -y install build-essential
sudo apt -y install cmake
sudo apt -y install zsh
sudo apt -y install curl
sudo apt -y install wget
sudo apt -y install fonts-powerline
sudo apt -y install neofetch
sudo apt -y install htop
sudo apt -y install tree

sudo apt -y autoremove

# VIM-PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp document.vimrc ~/.vimrc

# VSCODE
snap install code --classic

# OH-MY-ZSH
cp document.zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "
in vim do the :PlugInstall
"

