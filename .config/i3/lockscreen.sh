scrot -o /tmp/screen_lock.png
convert -scale 2.5% -resize 4000% /tmp/screen_lock.png /tmp/screen_lock.png
i3lock -i /tmp/screen_lock.png

sleep 60; pgrep i3lock && xset dpms force off
