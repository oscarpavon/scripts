while true; do
    # Log stderror to a file 
    dwm 2> dwm.log
		#sh ~/scripts/configure_everything.sh
		#export INITIALIZED=1	
    # No error logging
    #dwm >/dev/null 2>&1
		#dwmstatus 2>&1 >/dev/null &
		dwmstatus &
done
