counter=0
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
		xdotool key F5
		sleep 60
		xdotool mousemove 707 507
		xdotool click 1
		sleep 30
		xdotool mousemove 907 356
		xdotool click 1
		counter=0
	fi
done
