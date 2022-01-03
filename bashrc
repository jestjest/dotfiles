#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PATH="/rhome/jma/.local/bin:/rhome/jma/stuff:$PATH"

# {{{ FILE MANAGEMENT

alias ls='ls --color=auto'
alias svnmerge='svn up && svn merge svn://nebula/ixl_ops/main/ && svn commit -m "merge trunk"'
alias svnst='svn status'
alias svnlog='svn log | less'
alias m0='ssh quia@mercury0'
alias c1='ssh cerberus1'
alias c11='ssh cerberus11'
alias c12='ssh cerberus12'
alias c21='ssh cerberus21'
alias pgsnapa='PGPASSWORD=ixl psql -h pgi-snapa -U ixl -d ixl_snap_a'
alias pgsnapb='PGPASSWORD=ixl psql -h pgi-snapb -U ixl -d ixl_snap_b'
alias unisonserver='unison -socket 15612 > ~/.unisonlog 2>&1 &'

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
EDITOR=vim
SVN_EDITOR=vim

PATH="/rhome/jma/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/rhome/jma/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/rhome/jma/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/rhome/jma/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/rhome/jma/perl5"; export PERL_MM_OPT;
