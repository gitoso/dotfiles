# Dotfiles instalation script - Comment any section you don't want to install

# Install Flow:
# - If first time, save original config
# - Backup actual config
# - Replace with dotfiles repo config (link)

# i3-wm ============================================================
if [ -f "$HOME/.config/i3/config.original" ]; then
    rm -f ~/.config/i3/config.bkp
    mv ~/.config/i3/config ~/.config/i3/config.bkp
else
    if [ -f "$HOME/.config/i3/config" ]; then
        mv ~/.config/i3/config ~/.config/i3/config.original
    else
        mkdir ~/.config/i3/ 2>/dev/null
    fi
fi
ln -s `pwd`/.config/i3/config ~/.config/i3/config

# i3-blocks ==========================================================
if [ -f "$HOME/.config/i3blocks/config.original" ]; then
    rm -f ~/.config/i3blocks/config.bkp
    mv ~/.config/i3blocks/config ~/.config/i3blocks/config.bkp
else
    if [ -f "$HOME/.config/i3blocks/config" ]; then
        mv ~/.config/i3blocks/config ~/.config/i3blocks/config.original
    else
        mkdir ~/.config/i3blocks/ 2>/dev/null
    fi
fi
ln -s `pwd`/.config/i3blocks/config ~/.config/i3blocks/config

# compton ============================================================
if [ -f "$HOME/.config/compton/compton.conf.original" ]; then
    rm -f ~/.config/compton/compton.conf.bkp
    mv ~/.config/compton/compton.conf ~/.config/compton/compton.conf.bkp
else
    if [ -f "$HOME/.config/compton/compton.conf" ]; then
        mv ~/.config/compton/compton.conf ~/.config/compton/compton.conf.original
    else
        mkdir ~/.config/compton/ 2>/dev/null
    fi
fi
ln -s `pwd`/.config/compton/compton.conf ~/.config/compton/compton.conf

# ranger ==========================================================
if [ -f "$HOME/.config/ranger/rc.conf.original" ]; then
    rm -f ~/.config/ranger/rc.conf.bkp
    mv ~/.config/ranger/rc.conf ~/.config/ranger/rc.conf.bkp
else
    if [ -f "$HOME/.config/ranger/rc.conf" ]; then
        mv ~/.config/ranger/rc.conf ~/.config/ranger/rc.conf.original
    else
        mkdir ~/.config/ranger/ 2>/dev/null
    fi
fi
ln -s `pwd`/.config/ranger/rc.conf ~/.config/ranger/rc.conf

# zoom ================================================================
if [ -f "$HOME/.config/zoomus.conf.original" ]; then
    rm -f ~/.config/zoomus.conf.bkp
    mv ~/.config/zoomus.conf ~/.config/zoomus.conf.bkp
else
    if [ -f "$HOME/.config/zoomus.conf" ]; then
        mv ~/.config/zoomus.conf ~/.config/zoomus.conf.original
    fi
fi
ln -s `pwd`/.config/zoomus.conf ~/.config/zoomus.conf

# zsh  ==================================================================
if [ -f "$HOME/.zshrc.original" ]; then
    rm -f ~/.zshrc.bkp
    mv ~/.zshrc ~/.zshrc.bkp
else
    if [ -f "$HOME/.zshrc" ]; then
        mv ~/.zshrc ~/.zshrc.original
    fi
fi
ln -s `pwd`/.zshrc ~/.zshrc

# xinirtc ===============================================================
if [ -f "$HOME/.xinitrc.original" ]; then
    rm -f ~/.xinitrc.bkp
    mv ~/.xinitrc ~/.xinitrc.bkp
else
    if [ -f "$HOME/.xinitrc" ]; then
        mv ~/.xinitrc ~/.xinitrc.original
    fi
fi
ln -s `pwd`/.xinitrc ~/.xinitrc

# vimrc =================================================================
if [ -f "$HOME/.vimrc.original" ]; then
    rm -f ~/.vimrc.bkp
    mv ~/.vimrc ~/.vimrc.bkp
else
    if [ -f "$HOME/.vimrc" ]; then
        mv ~/.vimrc ~/.vimrc.original
    fi
fi
ln -s `pwd`/.vimrc ~/.vimrc