# download neovim as non-admin
mkdir -p ~/bin/
wget https://github.com/neovim/neovim/releases/download/v0.6.1/nvim.appimage -O ~/bin/nvim
chmod +x ~/bin/nvim

# Add ~/bin to path if not already there
# echo $PATH | grep -q '${HOME}/bin'
# if [ $? -eq 0 ] ; then
#     echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
# fi

# installing python interfacd can usually be done because it doesn't need admin priviledges
pip install -U pynvim
pip install 'python-lsp-server[all]' pylsp-mypy pyls-isort

mkdir -p ~/.config/nvim
git clone --depth=1 https://github.com/longyuxi/nvim-config ~/.config/nvim

# patch fonts

# git clone https://github.com/ryanoasis/nerd-fonts
# ./install.sh
