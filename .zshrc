# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

GPG_TTY=$(tty)
export GPG_TTY

export EDITOR=nvim
ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL10K_MODE="nerdfront-complete"
POWERLEVEL10K_DISABLE_RPROMPT=true
#POWERLEVEL10K_PROMPT_ON_NEWLINE=true
#POWERLEVEL10K_MULTILINE_LAST_PROMPT_PREFIX="▶"
POWERLEVEL10K_MULTILINE_FIRST_PROMPT_PREFIX=""

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
# case insensitive path-completion
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

# enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias dir='dir --color=auto'
      alias vdir='vdir --color=auto'
      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
  fi

## ALIASES ##

# some more ls aliases
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
    alias ls='ls -lah --color=auto'

# Paru aliases
    alias paruin='paru -S'
    alias paruout='paru -Rs'

# Directory aliases
    alias .1='cd ..'
    alias .2='cd ../..'
    alias .3='cd ../../..'
    alias .4='cd ../../../..'
    alias .5='cd ../../../../..'
    
# mkdir verbose + make parents
    alias mkdir='mkdir -pv' 

# Confirmations (safety checks)
    alias mvi='mv -i'
    alias cp='cp -i'
    alias rmi='rm -i'
    alias ln='ln -i'

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Auto suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='rg --files --hidden' # if using rg. Options include "--hidden --follow --glob --type". See help with `rg -h`
export FZF_DEFAULT_COMMAND='rg --files --follow' 
# export FZF_DEFAULT_COMMAND="find -L"
export FZF_DEFAULT_OPS="-m --height 50% --layout=reverse --border --inline-info --extended"
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --follow'
  export FZF_DEFAULT_OPTS="-m --height 50% --layout=reverse --border --inline-info 
  --preview-window=:hidden
  --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
  --bind '?:toggle-preview' 
"
fi

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
pfetch

