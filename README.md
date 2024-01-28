## One Script Terminal Setup - Debian

In this short post we'll setup terminal for Debian based systems. The `install.sh` script will trigger following actions:

- Update and upgrade debian packages
- Installs following packages
    - vim
    - zsh
    - curl
    - fzf
    - build-essential
    - git
    - tmux
    - bat
- Installs [Oh My Zsh](https://ohmyz.sh/)
- Installs [powerline10k](https://github.com/romkatv/powerlevel10k) ZSH theme
- Copies `zshrc, aliases_func` files to user's home directory
- Installs [vim plug](https://github.com/junegunn/vim-plug) Vim plugin manager
- Copies `vimrc` to user's home directory


### Setup

Once `install.sh` is executed:
- You'll be prompted to enter in `password` (user need to have `sudo` privileges)
- You'll be asked to complete setup for `powerline10k` ZSH theme
- Open vim (`v` can be used as aliases):
    - Enter `:PlugInstall` to install vim plugin

Following vim plugins will be installed by default (as part of `vimrc` in this repo):

- vim-airline/vim-airline
- vim-airline/vim-airline-themes
- tpope/vim-characterize
- scrooloose/nerdtree
- junegunn/vim-easy-align
- scrooloose/syntastic
- tpope/vim-commentary
- elzr/vim-json
- dhruvasagar/vim-table-mode
- tpope/vim-surround
- ervandew/supertab
- tpope/vim-commentary
- othree/xml.vim
- vimwiki/vimwiki
- lilydjwg/colorizer
- flazz/vim-colorschemes
- xolox/vim-misc
- xolox/vim-notes
- chrisbra/unicode.vim
- itchyny/calendar.vim


---

I hope you found this post helpful. Feel free to reach out to me if you have feedback.

~Amit
