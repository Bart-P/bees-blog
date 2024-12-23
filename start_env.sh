#! /usr/bin/env bash

session="bees_blog"
window=1

tmux new -d -s $session
tmux rename-window -t $session:$window 'nvim'
tmux send-keys -t $session:$window 'nvim .' C-m

window=2
tmux new-window -t $session:$window
tmux rename-window -t $session:$window 'term'
tmux send-keys -t $session:$window 'git status' C-m

window=3
tmux new-window -t $session:$window
tmux rename-window -t $session:$window 'serv'
tmux send-keys -t $session:$window 'hugo server --buildDrafts' C-m

tmux attach-session -t $session:1
