while : 
do
	echo "la"
	cmus-remote -p
	#echo $?
	if [ $? -eq 0 ]
	then
		echo "exit now"
		break
	fi
done
