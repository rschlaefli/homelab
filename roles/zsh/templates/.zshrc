export TERM="xterm-256color"
export LANG=en_US.UTF-8
export EDITOR='nano'

# enable firefox hardware acceleration
export MOZ_ACCELERATED=1 MOZ_WEBRENDER=1

# load fixed for tilix VTE
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte-2.91.sh
fi

# load antibody
source <(antibody init)

# setup theme
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_DIR_HOME_BACKGROUND='darkturquoise'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='darkturquoise'
POWERLEVEL9K_DIR_ETC_BACKGROUND='darkturquoise'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='darkturquoise'

# load the antibody bundle
source ~/.zsh_plugins.sh

# setup the path
PATH=$HOME/apps:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/{{account_name}}/miniconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
        eval "$__conda_setup"
else
        if [ -f "/home/{{account_name}}/miniconda3/etc/profile.d/conda.sh" ]; then
                . "/home/{{account_name}}/miniconda3/etc/profile.d/conda.sh"
        else
                export PATH="/home/{{account_name}}/miniconda3/bin:$PATH"
        fi
fi
unset __conda_setup
# <<< conda initialize <<<

###-begin-ionic-completion-###
if type compdef &>/dev/null; then
  __ionic() {
    compadd -- $(ionic completion -- "${words[@]}" 2>/dev/null)
  }

  compdef __ionic ionic
fi
###-end-ionic-completion-###

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/{{account_name}}/.sdkman"
[[ -s "/home/{{account_name}}/.sdkman/bin/sdkman-init.sh" ]] && source "/home/{{account_name}}/.sdkman/bin/sdkman-init.sh"
