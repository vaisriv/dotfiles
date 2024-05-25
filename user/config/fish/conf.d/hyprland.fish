# If running from tty1 start hyprland 
set TTY1 (tty)
[ "$TTY1" = "/dev/tty1" ] && exec Hyprland
