#!/bin/bash
tmux new-session -d -s clash
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "clashr -f ~/.config/clash/config.yml" C-m
tmux select-pane -t 1
tmux send-keys "cd ~/git/yacd && yarn start" C-m
