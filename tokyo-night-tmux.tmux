#!/usr/bin/env bash
SLATE=#1F2335
WHITE=#A9B1D6
GRAY=#3B4261
SKYBLUE=#7AA2F7
LSEPARATOR=   #define your own.
RSEPARATOR=
ICON_TIME=
ICON_DATE=
LEFT_TEXT="#{user}"

tmux set-option -gq pane-active-border-style "fg=#7AA2F7"
tmux set-option -gq pane-border-style 'fg=#3B4261'

tmux set-option -gq status-bg $SLATE
#+--- Bars LEFT ---+
tmux set-option -gq status-left "#[fg=$SLATE,bg=$SKYBLUE,bold] $LEFT_TEXT "
#+--- Windows ---+
tmux set-option -gq status-justify left
# Focus
tmux set-option -gq window-status-current-format "#[fg=$SKYBLUE,bg=$GRAY]   #I #W #[fg=$GRAY,bg=$SLATE]$RSEPARATOR"
# Unfocused 
tmux set-option -gq window-status-format "#[fg=$WHITE,bg=$SLATE]  #I #W #F "

#+--- Bars RIGHT ---+
tmux set-option -gq status-right "#[fg=$SKYBLUE,bg=$GRAY] $ICON_DATE %Y-%m-%d #[fg=$SLATE,bg=$SKYBLUE] $ICON_TIME %H:%M "
tmux set-option -gq window-status-separator ''
