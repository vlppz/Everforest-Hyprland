#! /usr/bin/bash

percents=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage" | awk '{split($2, a, "."); print a[1]}')
state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state" | awk '{print $2}')

if [ "$state" = "charging" ]
then
    chr_perc=$(cat ~/.config/eww/scripts/charging_anim.txt)

    if [ "$chr_perc" = "100" ]
    then
        echo 0 &> ~/.config/eww/scripts/charging_anim.txt
    elif [ "$chr_perc" != "100" ]
    then
        echo $((chr_perc+25)) &> ~/.config/eww/scripts/charging_anim.txt
    fi

    echo $chr_perc
elif [ "$state" != "charging" ]
then
    echo $percents
    echo 0 &> ~/.config/eww/scripts/charging_anim.txt
fi