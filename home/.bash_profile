# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = "1" ]; then
  export XDG_SESSION_TYPE=wayland
  export XDG_SESSION_DESKTOP=niri
  export XDG_CURRENT_DESKTOP=niri
  exec niri-session -l
fi

