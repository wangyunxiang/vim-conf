#!/bin/bash

src_dir=$(pwd)
installed_dir=~/.vim/bundle

for i in `cat $src_dir/install.sh |grep ^git|awk -F'/' '{print $5}'|awk -F'.git' '{print $1}'`
do 
	if [ -d $installed_dir/$i ]
	then
		rm -rf $installed_dir/$i;
	fi
done

cat /dev/null > ~/.vimrc
sed -i '/stty -ixon/d' ~/.bashrc
