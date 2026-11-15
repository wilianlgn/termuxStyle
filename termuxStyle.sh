#!bin/bash

cd ~

# Instalar herramientas necesarias

apt install lsd
apt install bat
apt install git

# borrar archivos de termux configuraxion por defecto

rm .bashrc 2> /dev/null
rm .vimrc 2> /dev/null
rm ~/.termux/font.ttf 2> /dev/null
rm ~/.termux/termux.properties 2> /dev/null

# instalar archivos de configuracion

curl -L -o font.ttf https://raw.githubusercontent.com/wilianlgn/termuxStyle/main/font.ttf

curl -L -o .vimrc https://raw.githubusercontent.com/wilianlgn/termuxStyle/main/vimrc

curl -L -o .bashrc https://raw.githubusercontent.com/wilianlgn/termuxStyle/main/bashrc

curl -L -o termux.properties https://raw.githubusercontent.com/wilianlgn/termuxStyle/main/termux.properties

mv termux.properties ~/.termux
mv font.ttf ~/.termux

# instalar emmet

mkdir -p ~/.vim/pack/plugins/start
git clone https://github.com/mattn/emmet-vim.git ~/.vim/pack/plugins/start/emmet-vim

