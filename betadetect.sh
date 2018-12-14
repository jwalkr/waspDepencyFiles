#!/bin/bash
process=`ps -ef | grep "MTNbetLabs.jar" | grep -v grep | wc -l`
if [ "$process" -gt 0 ]; then
   echo `date` - beta.MTN ussd is alive >> /dev/null 
else
   echo `date` beta.MTN ussd is dead - restart required >> restartlog
   /opt/mtn/ussd124/betaussd.sh
fi

