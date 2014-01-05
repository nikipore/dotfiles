source $HOME/.profile
source $HOME/.alias

export HISTCONTROL=erasedups  # Ignore duplicate entries in history
export HISTFILE=~/.histfile
export HISTSIZE=10000         # Increases size of history
export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear:clr:[bf]g"
