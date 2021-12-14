#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
# polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar secondary 2>&1 | tee -a /tmp/polybar1.log & disown
polybar main &
polybar secondary &

echo "Bars launched..."
