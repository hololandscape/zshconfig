#!/bin/env bash
if [ $SHELL != '/bin/zsh'];
	echo "There is no zsh in your system, check it and try again."
	echo "Or if you default shell is not zsh,use command to change: chsh -s /bin/zsh YouName"
	exit 1
fi

echo "Install oh-my-zsh..."
tar xf oh-my-zsh.tar.gz -C ~/
echo "Install complete!"

echo "Install vim theme"
tar xf vim.tar.gz -C ~/
echo "Install complete!"
