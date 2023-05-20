source "/usr/share/tmux/powerline.conf"
set-option -sa terminal-overrides ",xterm*:Tc"

unbind C-b
set-option -g prefix C-Space
bind-key C-Space send-prefix
