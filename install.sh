sudo apt-get install ack-grep
sudo npm install -g eslint eslint-config-defaults babel-eslint
# todo git submodule support
rm -rf ./vim/bundle/ale
git clone https://github.com/w0rp/ale ./vim/bundle/ale
rm ~/.vimrc
rm -rf ~/.vim
cp ./vimrc ~/.vimrc
cp -R ./vim ~/.vim
echo "\n\n-----------------------------\nDone! Happy coding :D"

