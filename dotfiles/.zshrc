POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# load antigen
source ~/.antigen.zsh

# load library files
antigen bundle robbyrussell/oh-my-zsh lib/

# setup theme
antigen theme bhilburn/powerlevel9k powerlevel9k

# setup bundles
antigen bundle ssh-agent
antigen bundle tmuxinator
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle pip
antigen bundle python
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

export LANG=en_US.UTF-8
export EDITOR='NANO'

# add rust to the path
PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH
PATH=$HOME/nextcloud/apps:$PATH
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. /home/roland/anaconda3/etc/profile.d/conda.sh
