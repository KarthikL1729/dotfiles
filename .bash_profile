#
# ~/.bash_profile
#
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{.wine/*, Androidback/*, .cache/*}"'
[[ -f ~/.bashrc ]] && . ~/.bashrc
