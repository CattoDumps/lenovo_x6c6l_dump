#!/vendor/bin/sh
echo 0 > /sys/bus/i2c/devices/5-0034/re
echo 0 > /sys/bus/i2c/devices/5-0037/re
echo 0 > /sys/bus/i2c/devices/5-0034/f0
echo 0 > /sys/bus/i2c/devices/5-0037/f0
sleep 1
aw881xx_cali fast_start_cali aw881xx_smartpa

LEFTRE=`cat /sys/bus/i2c/devices/5-0034/re | grep 'mohm' | awk -F '=' '{print $2}'`
LEFTRE=`echo $LEFTRE | sed 's/mohm//'`
echo "left re mohm:"
echo $LEFTRE
aw881xx_cali store_fixed_re aw881xx_smartpa 5 34 $LEFTRE
RIGHTRE=`cat /sys/bus/i2c/devices/5-0037/re | grep 'mohm' | awk -F '=' '{print $2}'`
RIGHTRE=`echo $RIGHTRE | sed 's/mohm//'`
echo "right re mohm:"
echo $RIGHTRE
aw881xx_cali store_fixed_re aw881xx_smartpa 5 37 $RIGHTRE
echo "awinic smartPa cali success"
