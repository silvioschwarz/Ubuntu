#RAM Info
#sudo dmidecode -t 17
sudo dmidecode --type memory | grep Volatile
sudo lshw -c memory


#CPU Info
sudo dmidecode --type processor | grep Version:
#sudo dmidecode --type processor
#sudo dmidecode -t 2
#lscpu
#cat /proc/cpuinfo #| grep processor | wc -l
#sudo lshw -class CPU

#GPU
lspci | grep VGA
sudo lshw -C video


#Mainboard
sudo dmidecode --type baseboard | grep "Product Name:"

#ethernet
#lspci | egrep -i --color 'network|ethernet'
lshw -class network

#Disks
sudo lshw -c disk
#ALL
 sudo lshw -businfo
