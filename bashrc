# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


PATH=$PATH:~/.local/bin
if [  `which powerline-daemon 2>/dev/null` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  $POWERLINE_REPOSITORY=$(pip show powerline-status | grep "^Location:" | cut -f 2- -d" ")
  export POWERLINE_REPOSITORY
  if [ ! -z "$POWERLINE_REPOSITORY"  ]; then
    . $POWERLINE_REPOSITORY/powerline/bindings/bash/powerline.sh
  fi
fi
