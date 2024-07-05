. $HOME/.profile
# prompt
autoload -Uz compinit promptinit
compinit
promptinit
source $HOME/.git_prompt.zsh
PROMPT='%B%~%b %# '

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# cd
setopt autocd

# history
setopt histignorealldups sharehistory
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.history

# aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
alias duf='du -hsc * |sort -h'
alias md='mkdir -p'
alias ll='ls -l'
alias lla='ls -la'
alias wcl='wc -l'

