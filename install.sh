#!/usr/bin/env bash

function install_zsh(){
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
    echo "Install oh-my-zsh complete!"
}

function install_bash(){
    echo "Install oh-my-bash..."
    cp -R .oh-my-bash ~/
    if [ -f ~/.bashrc ];then
        mv ~/.bashrc ~/.bashrc_bak
        cp ./.bashrc ~/.bashrc
        sed -i "s/root/$HOME/" ~/.bashrc
    else
        cp ./.bashrc ~/.bashrc
        sed -i "s/root/$HOME/" ~/.bashrc
    fi	
    echo "Install oh-my-bash complete!"
}

function install_vim(){
    echo "Install vim theme..."
    cp -R .vim ~/
    if [ -f ~/.vimrc ];then
        mv ~/.vimrc ~/.vimrc_bak
        cp ./.vimrc ~/.vimrc
    else
        cp ./.vimrc ~/.vimrc
    fi
    echo "Install vim thene complete!"
}

if [ $SHELL == '/bin/zsh' ];then
    install_zsh
    install_vim
    # kubectl auto-completion
    which kubectl >/dev/null
    if [ $? -eq 0 ];then
        echo 'source <(kubectl completion zsh)' >> ~/.zshrc
    fi
elif [ $SHELL == '/bin/bash' ];then
    install_bash
    install_vim
    # kubectl auto-completion
    which kubectl >/dev/null
    if [ $? -eq 0 ];then
        echo 'source <(kubectl completion bash)' >> ~/.bashrc
    fi
fi


