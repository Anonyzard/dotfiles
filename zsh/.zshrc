#!/bin/zsh

DIR_ZSHRC=~/.zshrc.d
# Set up the prompt, help and history
source $DIR_ZSHRC/init.rc
source $DIR_ZSHRC/help.rc
source $DIR_ZSHRC/history.rc
source /opt/polyglot/polyglot.sh

# Use modern completion system
source $DIR_ZSHRC/alias.rc
source $DIR_ZSHRC/functions.rc
source $DIR_ZSHRC/path.rc
source $DIR_ZSHRC/completion.rc
#source /etc/zsh_command_not_found
#source /usr/share/zsh/functions/cmd-not-found.zsh

source $DIR_ZSHRC/keybindings.rc
source $DIR_ZSHRC/env.rc
source $DIR_ZSHRC/zinit.rc
# bindkey '^H' backward-}kill-word

[ -f $DIR_ZSHRC/private.rc ] && source $DIR_ZSHRC/private.rc
