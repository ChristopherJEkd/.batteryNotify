#!/usr/bin/env bash

#~ sudo apt-get install acpi
#~ git clone https://github.com/hg8/battery-full-notification.git

#~ bat_low=`acpi -b | grep -P -o '[0-9]+(?=%)'`
#~ echo $bat_low 

while true
do
	export DISPLAY=:0.0
	current_directory=$(pwd)
	img_path="${current_directory}/battery.png"
	#~ /usr/share/sounds/ubuntu/ringtones/Alarm\ clock.ogg
	audio_path="/usr/share/sounds/gnome/default/alerts/click.ogg"
	batteryPercentMultiLine=$(acpi -b | grep -P -o '[0-9]+(?=%)')
	battery_percent=`echo "${batteryPercentMultiLine}" | head -1`
    
	if on_ac_power; then
		: # Do nothing
		#~ if [ "$battery_percent" -gt 95 ]; then
			#~ notify-send -i $img_path "Discharge Battery Now" "Level: ${battery_percent}% "
			#~ paplay $audio_path
		#~ fi
	elif [ "$battery_percent" -le 70 ]; then
		notify-send -i $img_path "Recharge Battery Now" "Level: ${battery_percent}% "
		paplay $audio_path
    fi

    sleep 300 # (5 minutes)
done
