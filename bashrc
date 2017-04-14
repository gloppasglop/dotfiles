# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  powerline_repository_root=$(pip show powerline-status | grep "^Location:" | cut -f 2- -d" ")
  if [ ! -z "$powerline_repository_root"  ]; then
    . $powerline_repository_root/powerline/bindings/bash/powerline.sh
  fi
fi
