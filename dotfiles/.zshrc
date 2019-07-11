export TERM="xterm-256color"
export LANG=en_US.UTF-8
export EDITOR='nano'

# enable firefox hardware acceleration
export MOZ_ACCELERATED=1 MOZ_WEBRENDER=1

# load fixed for tilix VTE
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte-2.91.sh
fi

# load antigen
source ~/.antigen.zsh

# load library files
antigen bundle robbyrussell/oh-my-zsh lib/

# setup theme
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_DIR_HOME_BACKGROUND='darkturquoise'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='darkturquoise'
POWERLEVEL9K_DIR_ETC_BACKGROUND='darkturquoise'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='darkturquoise'
antigen theme bhilburn/powerlevel9k powerlevel9k

# setup bundles
# antigen bundle ssh-agent
# antigen bundle tmuxinator
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle pip
antigen bundle python
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# add rust to the path
PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
PATH=$HOME/nextcloud/apps:$PATH
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/roland/miniconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
        eval "$__conda_setup"
else
        if [ -f "/home/roland/miniconda3/etc/profile.d/conda.sh" ]; then
                . "/home/roland/miniconda3/etc/profile.d/conda.sh"
        else
                export PATH="/home/roland/miniconda3/bin:$PATH"
        fi
fi
unset __conda_setup
# <<< conda initialize <<<
