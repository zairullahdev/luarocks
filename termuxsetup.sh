#!/bin/bash


apt-get install figlet > /dev/null

figlet "Luarocks port for Termux"

echo "Installing Lua 5.4"

apt-get install lua54 > /dev/null

echo "Installing Git and make"

apt-get install git make > /dev/null

echo "Cloning"

git clone https://github.com/zairullahdev/luarocks

echo "Setup is just for second, not too long"

cd luarocks && ./configure && make && make install

echo "Removing Cache's....."

cd ~ && rm -rf luarocks

echo "To test it, run luarocks"
