#!/bin/bash

src_dir=$(pwd)
mkdir -p ~/.vim/autoload ~/.vim/bundle

# install powerline/fonts
cd ~ && git clone https://github.com/powerline/fonts.git
~/fonts/install.sh
# install pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# install vim plugin
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-scripts/ShowMarks.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/vim-scripts/auto_mkdir.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/vim-scripts/winmanager.git
git clone https://github.com/vim-scripts/matchit.zip.git
git clone https://github.com/vim-scripts/Gundo.git
git clone https://github.com/godlygeek/tabular.git
git clone https://github.com/tpope/vim-surround.git
# for cancel <ctrl> S
echo "stty -ixon" >> ~/.bashrc

# copy the vimrc
\cp $src_dir/vimrc ~/.vimrc
