#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PATH="/rhome/jma/.local/bin:/rhome/jma/stuff:$PATH"

# {{{ FILE MANAGEMENT

alias ls='ls --color=auto'
alias m0='ssh quia@mercury0'
alias c11='ssh cerberus11'
alias c12='ssh cerberus12'
alias c21='ssh cerberus21'
alias unisonserver='unison -socket 15612 > ~/.unisonlog 2>&1 &'
alias aws='/opt/aws/aws-cli/current/bin/aws'

function extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1     ;;
      *.tar.gz)    tar xvzf $1     ;;
      *.bz2)       bunzip2 $1 ;;
      *.rar) unrar x $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xvf $1 ;;
      *.tbz2) tar xvjf $1 ;;
      *.tgz) tar xvzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via >extract<" ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}
#   }}}
export EDITOR=vim
export SVN_EDITOR=vim
