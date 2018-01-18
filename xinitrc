[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xrandr -s 1920x1080
exec i3 -V >> ~/i3log-$(date +'%F-%k-%M-%S') 2>&1
