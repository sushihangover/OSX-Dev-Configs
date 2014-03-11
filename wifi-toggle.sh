while true;
do
sleep 900
networksetup -setairportpower en1 off 
sleep 1
networksetup -setairportpower en1 on
sleep 900
done;

