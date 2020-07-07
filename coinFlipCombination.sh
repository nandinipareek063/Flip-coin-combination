echo "Welcome to coin flip combination problem"


heads=0
tails=0
no=$((RANDOM%2))
if [ $no -eq 1 ]
then
	echo "Heads win "
else
        echo "Tails win"
fi
