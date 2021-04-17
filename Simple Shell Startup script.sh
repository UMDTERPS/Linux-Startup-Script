#!/bin/bash
# This script can start vairious linux apps and runs on startup
start_apps(){
 ##Starting App #1
sh ./where/the/path/is/of/bin/file.sh start_app1
if [$? = 0]; then 
    echo -e "Yay the program started!"
else
    echo -e "NO! Program #1 did not start"
fi
else
  :
fi

##Starting app# 2
sh ./where/the/path/is/of/bin/file.sh start_app2
if [$? = 0]; then 
    echo -e "Yay the program #2 started!"
else
    echo -e "NO! Program #2 did not start"
fi
else
  :
fi

}

stop_apps(){
#Stops App #1
sh ./where/the/path/is/of/bin/file.sh stop_app1
ps -ef | grep name_of_app1 | awk '{ pint $2 }' | xargs kill-9 

#Stops App #2
sh ./where/the/path/is/of/bin/file.sh stop_app2
ps -ef | grep name_of_app2 | awk '{ pint $2 }' | xargs kill-9  
}

apps1_&_apps2_status(){
#Checks App #1 Status
sh ./where/the/path/is/of/bin/file.sh _apps1 status
ps -ef | grep -q name_of_pp1 | awk ' { print #2 } ' 

#Checks App #2 Status
sh ./where/the/path/is/of/bin/file.sh _apps2 status
ps -ef | grep -q name_of_pp2 | awk ' { print #2 } ' 
}

case "$1" in
    start)
    start_apps
    ;;
    stop)
    stop_apps
    ;;
    restart)
    stop_apps &&
    start_apps
    ;;
    status)
    apps1_&_apps2_status
    ;;
    *)
    echo "Usage: $0 {start|stop|status|restart}"
esac

exit 0