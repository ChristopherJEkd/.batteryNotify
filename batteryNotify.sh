#!/usr/bin/env bash

#~ sudo apt-get install acpi
#~ git clone https://github.com/hg8/battery-full-notification.git

#~ bat_low=`acpi -b | grep -P -o '[0-9]+(?=%)'`
#~ echo $bat_low 

while true
do
	export DISPLAY=:0.0
	batteryPercentMultiLine=$(acpi -b | grep -P -o '[0-9]+(?=%)')
	battery_percent=`echo "${batteryPercentMultiLine}" | head -1`
    
	if on_ac_power; then
		if [ "$battery_percent" -gt 95 ]; then
			notify-send -i "$PWD/battery.png" "Discharge Battery Now" "Level: ${battery_percent}% "
			paplay /usr/share/sounds/gnome/default/alerts/drip.ogg
			#~ /usr/share/sounds/ubuntu/ringtones/Alarm\ clock.ogg
		fi
	elif [ "$battery_percent" -le 70 ]; then
		notify-send -i "$PWD/battery.png" "Recharge Battery Now" "Level: ${battery_percent}% "
		paplay /usr/share/sounds/gnome/default/alerts/drip.ogg
    fi

    sleep 300 # (5 minutes)
done
