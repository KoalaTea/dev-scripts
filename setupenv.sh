mkdir -p $HOME/.dev_scripts
# install zsh
# setup zsh
# install docker
# install python3.7+ dev python3-venv
# install watchman
# move venv_wrapper.sh to a usable location and add source venv_wrapper.sh to beginning of zshrc
cp venv_wrapper.sh ~/.dev_scripts/venv_wrapper.sh
echo "source $HOME/.dev_scripts/venv_wrapper.sh" >> $HOME/.zshrc
# install golang