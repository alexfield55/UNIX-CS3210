#!/bin/bash

#/etc cd init.d less apache2
#case statment in $ARGV start) something like this from files
#init script example 
#apachect1
#google cases statement apache start stop

#Create a script named `ex16.sh` that is a start-up script for an application start and stop.  Use `apachectl` as the application for the script.


do_start()
{
        # Return
        #   0 if daemon has been started
        #   1 if daemon was already running
        #   2 if daemon could not be started

        if pidofproc -p $PIDFILE "$DAEMON" > /dev/null 2>&1 ; then
                return 1
        fi

        if apache_conftest ; then
                $APACHE2CTL start
                apache_wait_start $?
                return $?
        else
                APACHE2_INIT_MESSAGE="The apache2$DIR_SUFFIX configtest failed."
                return 2
        fi
}

do_stop()
{
        # Return
        #   0 if daemon has been stopped
        #   1 if daemon was already stopped
        #   2 if daemon could not be stopped
        #   other if a failure occurred

        # either "stop" or "graceful-stop"
        local STOP=$1
        # can't use pidofproc from LSB here
        local AP_RET=0

        if pidof $DAEMON > /dev/null 2>&1 ; then
                if [ -e $PIDFILE ] && pidof $DAEMON | tr ' ' '\n' | grep -w $(cat $PIDFILE) > /dev/null 2>&1 ; then
                        AP_RET=2
                else
                        AP_RET=1
                fi
        else
            AP_RET=0
        fi

        # AP_RET is:
        # 0 if Apache (whichever) is not running
        # 1 if Apache (whichever) is running
        # 2 if Apache from the PIDFILE is running

        if [ $AP_RET = 0 ] ; then
                return 1
        fi

        if [ $AP_RET = 2 ] && apache_conftest ; then
                apache_wait_stop $? $STOP
                return $?
        else
                if [ $AP_RET = 2 ]; then
                                        clear_error_msg
                        APACHE2_INIT_MESSAGE="The apache2$DIR_SUFFIX configtest failed, so we are trying to kill it manually. This is almost certainly suboptimal, so please make sure your system is working as you'd expect now!"
                        apache_wait_stop $? "kill"
                        return $?
                elif [ $AP_RET = 1 ] ; then
                        APACHE2_INIT_MESSAGE="There are processes named 'apache2' running which do not match your pid file which are left untouched in the name of safety, Please review the situation by hand".
                        return 2
                fi
        fi

}
if [[ $1 ]]; then
    case "$1" in
    start)
            log_daemon_msg "Starting $DESC" "$NAME"
            do_start
            RET_STATUS=$?
            case "$RET_STATUS" in
                    0|1)
                            log_success_msg
                            [ "$VERBOSE" != no ] && [ $RET_STATUS = 1 ] && log_warning_msg "Server was already running"
                    ;;
                    2)
                            log_failure_msg
                            print_error_msg
                            exit 1
                            ;;
            esac
            ;;
    stop|graceful-stop)
            log_daemon_msg "Stopping $DESC" "$NAME"
            do_stop "$1"
            RET_STATUS=$?
            case "$RET_STATUS" in
                    0|1)
                            log_success_msg
                            [ "$VERBOSE" != no ] && [ $RET_STATUS = 1 ] && log_warning_msg "Server was not running"
                    ;;
                    2)
                            log_failure_msg
                            print_error_msg
                            exit 1
                    ;;
            esac
            print_error_msg

            ;;
    esac
else echo "requires start or stop as arg"
fi