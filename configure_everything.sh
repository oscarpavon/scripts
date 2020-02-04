init(){
	echo "Initialize"
#show the integrated graphics card output on xrand
xrandr --setprovideroutputsource 1 0 
~/scripts/screens_configure.sh
~/scripts/screens_configure.sh
nvidia-settings --assign CurrentMetaMode="DPY-0:nvidia-auto-select+768+761 {ForceCompositionPipeline=On,ForceFullCompositionPipeline=On},DPY-1:nvidia-auto-select+2368+761 {ForceCompositionPipeline=On,ForceFullCompositionPipeline=On}"
compton &! 
#pump --startup
~/scripts/connect.sh
wmname LG3D
firefox &
logger "Init script executed"
}

echo $INITIALIZED
if [ "$INITIALIZED" = "1" ]
then
	echo "Already initialized"
	exit
else
	init
fi


