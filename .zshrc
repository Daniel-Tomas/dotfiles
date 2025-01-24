export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/danieltomassanchez/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/danieltomassanchez/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/danieltomassanchez/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/danieltomassanchez/google-cloud-sdk/completion.zsh.inc'; fi



# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"



plugins=(git zsh-autosuggestions sudo command-not-found vscode colored-man-pages)

alias ls='lsd'
alias zshconfig="mate ~/.zshrc"
alias clipboard='xclip -sel clip'

export EDITOR="/usr/bin/vim"


export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "rupa/z", use:z.sh


# TODO: Uncomment first time:
# zplug install
zplug load # --verbose





source ~/antigen.zsh
# antigen theme romkatv/powerlevel10k
antigen use prezto
antigen bundle git
antigen apply

export PAGER=less

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Created by `pipx` on 2024-06-16 15:52:38
export PATH="$PATH:/Users/danieltomassanchez/.local/bin"

umask 0022
