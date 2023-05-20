# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

alias docker=podman

unset rc

export TERM=xterm-256color
if [  `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  if [ -f "/usr/share/powerline/bash/powerline.sh" ]; then
    . /usr/share/powerline/bash/powerline.sh
  else
    POWERLINE_REPOSITORY=$(pip show powerline-status 2> /dev/null | grep "^Location:" | cut -f 2- -d" ")
    export POWERLINE_REPOSITORY
    if [ ! -z "$POWERLINE_REPOSITORY"  ]; then
      . $POWERLINE_REPOSITORY/powerline/bindings/bash/powerline.sh
    fi
  fi
fi
