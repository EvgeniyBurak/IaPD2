sudo hdparm -I /dev/sda | grep "Number" | cut -b 2- 
sudo hdparm -I /dev/sda | grep "Firmware"| cut -b 2-
sudo hdparm -I /dev/sda | grep "Used" | cut -b 2-,10
sudo hdparm -I /dev/sda | grep "Supported"| cut -b 2-
sudo hdparm -I /dev/sda | grep "PIO" |cut -b 2-
sudo hdparm -I /dev/sda | grep "DMA" | cut -b 2-
df | awk '{total += $2; used += $3; avail +=$4} END {print "Total Size: " total/1024/1024 "Gb" "\n" "Used: " used/1024/1024 "Gb" "\n" "Available: " avail/1024/1024 "Gb"}'