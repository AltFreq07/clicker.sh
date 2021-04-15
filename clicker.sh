counter=0
gmailLogin=false
start_alien(){
	echo "Closing open chrome windows"
	killall chrome
	sleep 20
	setsid chromium-browser play.alienworlds.io &
	sleep 30
	##Click login
	xdotool mousemove 710 510
	xdotool click 1
	sleep 20
	##Click login button popup
	xdotool mousemove 303 282
	xdotool click 1
	sleep 20
	if [ "$gmailLogin" = true ]; then
		xdotool mousemove 240 189
		xdotool click 1
		sleep 20
	else
		xdotool mousemove 290 344
		xdotool click 1
		sleep 20
		xdotool mousemove 159 618
		xdotool click 1
		sleep 20
	fi
	xdotool mousemove 912 353
	xdotool click 1
	sleep 10
	counter=0
}

start_alien
while [ true ]
do
	##Start mine
	xdotool mousemove 716 566
	xdotool click 1
	sleep 1
	##Claim
	xdotool mousemove 715 457
	xdotool click 1
	sleep 1
	##Popup Approve
	xdotool mousemove 306 697
	xdotool click 1
	sleep 1
	##Popup Retry - To long to solve
	xdotool mousemove 430 610
	xdotool click 1
	sleep 1
	##Mining Hub
	xdotool mousemove 571 538
	xdotool click 1
	sleep 1
	##Error window 1
	xdotool mousemove 874 324
	xdotool click 1
	sleep 1
	##Error window 2
	xdotool mousemove 875 335
	xdotool click 1
	sleep 1
	counter=$[$counter+1]
	if [ "$counter" -gt 520 ]; then
		echo "Refreshing"
		start_alien
	fi
done

