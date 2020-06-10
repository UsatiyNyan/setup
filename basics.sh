sudo apt -y update
sudo apt -y upgrade
sudo apt -y install \
    git \
    vim \
    xclip \
    build-essential \
    cmake \
    zsh \
	curl \
    wget \
    fonts-powerline \
    neofetch \
    htop

sudo apt -y autoremove

# VIM-PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp document.vimrc ~/.vimrc

# OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp document.zshrc ~/.zshrc

# VSCODE
snap install code --classic

echo "
in vim do the :PlugInstall
"

