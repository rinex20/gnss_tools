#!/system/bin/sh

/data/rtk/busybox start-stop-daemon -p /data/rtk/str2str_localhost_52001.pid -K
hps_sta=`cat /proc/hps/enabled`
if [ $hps_sta == 0 ]; then
  echo 1 > /proc/hps/enabled
fi