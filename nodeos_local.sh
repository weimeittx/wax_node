#!/usr/bin/env bash
rm -rf all.log
HOST_WAX_HOME=`pwd`
if [ -z "$1" ]; then
        nohup nodeos -c $HOST_WAX_HOME/config.ini >> all.log&
else
        nohup nodeos -c $HOST_WAX_HOME/config.ini --snapshot $HOST_WAX_HOME/$1 >> all.log&
fi