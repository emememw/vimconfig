sudo apt-get install ack-grep build-essential cmake python-dev python3-dev
sudo npm install -g eslint eslint-config-defaults babel-eslint tern
# todo git submodule support
rm -rf ./vim/bundle/ale
git clone https://github.com/w0rp/ale ./vim/bundle/ale
rm ~/.vimrc
#rm -rf ~/.vim
cp ./vimrc ~/.vimrc
cp ./tern-config ~/.tern-config
# cp -R ./vim ~/.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe && ./install.py --tern-completer
echo "\n\n-----------------------------\nDone! Happy coding :D"

