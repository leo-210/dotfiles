function lock
    # Check if playerctl is installed
    if playerctl -h > /dev/null
        set -l p (playerctl status)
        if test "$p" = "Playing"
            return
        end
    end

    # If rofi is still on, it messes with i3lock
    pkill rofi

    scrot -o --silent /tmp/screen_lock.png
    convert -scale 2.5% -resize 4000% /tmp/screen_lock.png /tmp/screen_lock.png
    i3lock -i /tmp/screen_lock.png

    sleep 60; pgrep i3lock && xset dpms force off
end

lock
