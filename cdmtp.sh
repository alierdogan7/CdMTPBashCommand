if [ -z "$1" ]
then
	echo "usage: cdusb <usb device keyword (corp. name etc.) to search>"
else
	tmp=$(lsusb | grep $1)

	#if the device with given keyword exists
	if [ -n "$tmp" ]
	then
		tmp=$(lsusb | grep $1 | awk '{print $2,$4;}')
		tmp=${tmp:0:-1}
		
		bus_no=$(echo $tmp | awk '{print $1;}')
		dev_no=$(echo $tmp | awk '{print $2;}')
		
		#echo "Bus no: "$bus_no"\nDevice no: "$dev_no
	
		MTP_DEV_PATH="/run/user/1000/gvfs/mtp:host="
		MTP_DEV_PATH=$MTP_DEV_PATH"%5Busb%3A"$bus_no"%2C"$dev_no"%5D"
		
		#change directory into that path
		cd $MTP_DEV_PATH
		#echo $MTP_DEV_PATH
	fi
	
fi
