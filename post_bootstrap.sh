#!/bin/zsh
echo "**************************************************************************"
echo "*********************Removing dotfiles...*********************************"
echo "**************************************************************************"
[ -f "$HOME/.tmux.conf" ] && rm -f $HOME/.tmux.conf
[ -f "$HOME/.vimrc" ] && rm -f $HOME/.vimrc

echo "**************************************************************************"
echo "*********************Symlinking dotfiles...*******************************"
echo "**************************************************************************"
ln -s $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/vimrc $HOME/.vimrc

echo "**************************************************************************"
echo "************************Install Plug for vim...***************************"
echo "**************************************************************************"
mkdir -p $HOME/.vim/autoload
curl -fLo $HOME/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd $HOME

echo "**************************************************************************"
echo "***********************Install Vim plugins...**************************"
echo "**************************************************************************"
vim -c "PlugInstall" -c q -c q


