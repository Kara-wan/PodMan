#!/bin/sh

#  lintShell.sh
#  PodMan
#
#  Created by 万圣 on 2017/5/26.
#  Copyright © 2017年 万圣. All rights reserved.

#$2:sources
#$3:allowWarning
#$4:useLibraries

export LANG=en_US.UTF-8

echo "************************PodMan启动**************************"
echo "Pod lint: 开始 🚀🚀🚀🚀"
cd $1
pwd

if [ $3 == "YES" ]
then
    if [ $4 == "YES" ]
    then
        /usr/local/bin/pod lib lint --sources=$2 --allow-warnings --use-libraries
    else
        /usr/local/bin/pod lib lint --sources=$2 --allow-warnings
    fi
else
    if [ $4 == "YES" ]
    then
        /usr/local/bin/pod lib lint --sources=$2 --use-libraries
    else
        /usr/local/bin/pod lib lint --sources=$2
    fi
fi

echo "完成"
echo "**************************************************************"
