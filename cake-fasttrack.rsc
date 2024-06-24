#
# Cake queue with FastTrack (without disabling FastTrack)
#
/queue type add cake-nat=yes kind=cake name=CAKE
#
# Set max-limit=95% of your internet speed
# Max-limit must not be equal or higher than your internet speed, or else it will not work
#
/queue tree add max-limit=95M name=UPLOAD packet-mark=no-mark parent=ether1 queue=CAKE
/queue tree add max-limit=95M name=DOWNLOAD packet-mark=no-mark parent=bridge queue=CAKE