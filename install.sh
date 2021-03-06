#!/bin/bash

src_dir=$(pwd)
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors

# install solarized terminal
cd ~ && git clone git://github.com/seebi/dircolors-solarized.git
sleep 5
mv ~/dircolors-solarized ~/.dircolors-solarized
echo 'case "$TERM" in' >> ~/.bashrc
echo '    xterm)' >> ~/.bashrc
echo '        export TERM=xterm-256color' >> ~/.bashrc
echo '        ;;' >> ~/.bashrc
echo '    screen)' >> ~/.bashrc
echo '        export TERM=screen-256color' >> ~/.bashrc
echo '        ;;' >> ~/.bashrc
echo 'esac' >> ~/.bashrc
echo 'eval `dircolors ~/.dircolors-solarized/dircolors.256dark`' >> ~/.bashrc
source ~/.bashrc


# install powerline/fonts
cd ~ && git clone https://github.com/powerline/fonts.git
~/fonts/install.sh
if [ -d ~/fonts ]
then
	\rm -rf ~/fonts;
fi

# install colors
### gruvbox
cd ~ && git clone https://github.com/morhetz/gruvbox.git && cp gruvbox/colors/gruvbox.vim ~/.vim/colors/
if [ -d ~/gruvbox ]
then
	\rm -rf ~/gruvbox;
fi
### jellybeans
cd ~ && git clone https://github.com/nanotech/jellybeans.vim.git && cp jellybeans.vim/colors/jellybeans.vim ~/.vim/colors/
if [ -d ~/gruvbox ]
then
	\rm -rf ~/jellybeans.vim;
fi

# install pathogen
curl --connect-timeout 10 --retry 5 -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# install vim plugin
cd ~/.vim/bundle
git clone https://github.com/vim-scripts/winmanager.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-scripts/taglist.vim.git
git clone https://github.com/vim-scripts/ShowMarks.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/vim-scripts/auto_mkdir.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/vim-scripts/matchit.zip.git
git clone https://github.com/vim-scripts/Gundo.git
git clone https://github.com/godlygeek/tabular.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/tpope/vim-speeddating.git
git clone https://github.com/tpope/vim-repeat.git
git clone https://github.com/SirVer/ultisnips.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/yianwillis/vimcdoc.git
git clone https://github.com/luochen1990/rainbow.git
# for conque
cp -r $src_dir/conque ~/.vim/bundle/

# fix winmanager bug
patch -p0 ~/.vim/bundle/winmanager/plugin/winmanager.vim $src_dir/winmanager.patch

# fix taglist bug
patch -p0 ~/.vim/bundle/taglist.vim/plugin/taglist.vim $src_dir/taglist.diff


# for cancel <ctrl> S
echo "stty -ixon" >> ~/.bashrc

# copy the vimrc
\cp $src_dir/vimrc ~/.vimrc
