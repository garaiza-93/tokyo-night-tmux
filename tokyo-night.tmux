#!/bin/bash
SLATE=#1F2335
WHITE=#A9B1D6
GRAY=#3B4261
SKYBLUE=#7AA2F7
LSEPARATOR=   #define your own.
RSEPARATOR=
ICON_TIME=
ICON_DATE=
LEFT_TEXT="#{user}"
#set -g status-right-length 150
set -g status-bg $SLATE
#+--- Bars LEFT ---+
# Hostname 
set -g status-left "#[fg=$SLATE,bg=$SKYBLUE,bold] $LEFT_TEXT "
#+--- Windows ---+
set -g status-justify left
# Focus
set -g window-status-current-format "#[fg=$SKYBLUE,bg=$GRAY]   #I #W #[fg=$GRAY,bg=$SLATE]$RSEPARATOR"
# Unfocused 
set -g window-status-format "#[fg=$WHITE,bg=$SLATE]  #I #W #F "

#+--- Bars RIGHT ---+
set -g status-right "#[fg=$SKYBLUE,bg=$GRAY] $ICON_DATE %Y-%m-%d #[fg=$SLATE,bg=$SKYBLUE] $ICON_TIME %H:%M "
set -g window-status-separator ''
