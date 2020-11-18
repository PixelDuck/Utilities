pid=$(lsof -nP -i4TCP:$1 | tail -n +2 | awk '{print $2}' | xargs)
if [ -n "$pid" ]
then
	kill -9 $pid
	echo "$pid killed"
else
	echo "nothing to kill"
fi
