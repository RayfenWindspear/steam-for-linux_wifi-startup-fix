#!/bin/bash

######## BEGIN PART 1 - Copy to beginning of /usr/bin/steam just after the first line (#!...)
#check if wifi was off before starting
WIFIWASOFF=`iwconfig | grep -cim1 Tx-Power=off`
######## END PART 1




######## BEGIN PART 2 - Copy to very end of /usr/bin/steam
#if wifi was off before we started steam, shut if off again
if [ $WIFIWASOFF == 1 ]
    then
        rfkill block wifi
fi
######## END PART 2
