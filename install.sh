# Upgrade system
sudo apt update && sudo apt upgrade -y

# Install common tools
sudo apt install -y vim zsh curl fzf git build-essential tmux bat

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerline10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Backup existing .zshrc and copy zshrc from repo
mv ~/.zshrc ~/.zshrc.bak
cp zshrc ~/.zshrc

# Setup vim
#
# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.VIM_UNDO_FILES
mv ~/.vimrc ~/.vimrc.bak
cp vimrc ~/.vimrc

