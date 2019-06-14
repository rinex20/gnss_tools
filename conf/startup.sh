#!/system/bin/sh

/data/rtk/busybox start-stop-daemon -x /data/rtk/str2str -b -m -p /data/rtk/str2str_localhost_52001.pid --start -- -in serial://ttyMT3:115200 -out tcpsvr://:52001 -b 1
echo 0 > /proc/hps/enabled
cpu1_online=`cat /sys/devices/system/cpu/cpu1/online`
if [ $cpu1_online == 0 ]; then
  echo 1 > /sys/devices/system/cpu/cpu1/online
fi