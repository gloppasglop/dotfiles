source "/usr/share/tmux/powerline.conf"
set-option -sa terminal-overrides ",xterm*:Tc"

unbind C-b
set-option -g prefix C-Space
bind-key C-Space send-prefix
setw -g mode-keys vi

#set-option -g default-shell "exec env TMOUT=0 bash"
set-option -g default-command /usr/bin/bash
set-option -g default-shell /usr/bin/bash
