export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

export PATH=/usr/local/bin:$PATH
export PATH=/sbin:$PATH
export PATH=$PATH:/usr/sbin/

export PATH=$HOME/.nodebrew/current/bin:$PATH

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

autoload -Uz colors
colors

#補完機能を使用する
autoload -U compinit promptinit
compinit
zstyle ':completion::complete:*' use-cache true
#zstyle ':completion:*:default' menu select true
zstyle ':completion:*:default' menu select=1

#大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

PROMPT="%~ %# "

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/usr/local/texlive/2017/bin/x86_64-darwin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/makky/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/makky/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/makky/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/makky/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
