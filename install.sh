#!/bin/env bash
if [ $SHELL != '/bin/zsh'];then
	echo "There is no zsh in your system, check it and try again."
	echo "Or if you default shell is not zsh,use command to change: chsh -s /bin/zsh YouName"
	exit 1
fi

echo "Install oh-my-zsh..."
cp -R .oh-my-zsh ~/
if [ -f ~/.zshrc ];then
	mv ~/.zshrc ~/.zshrc_bak
	cp ./.zshrc ~/.zshrc
	cp ./.zprofile ~/.zprofile
else
	cp ./.zshrc ~/.zshrc
	cp ./.zprofile ~/.zprofile
fi	
echo "Install complete!"

echo "Install vim theme..."
cp -R .vim ~/
if [ -f ~/.vimrc ];then
	mv ~/.vimrc ~/.vimrc_bak
	cp ./.vimrc ~/.vimrc
else
	cp ./.vimrc ~/.vimrc
fi
echo "Install complete!"

# kubectl auto-completion
which kubectl >/dev/null
if [ $? -eq 0 ];then
	echo 'source <(kubectl completion zsh)' >> ~/.zshrc
fi
