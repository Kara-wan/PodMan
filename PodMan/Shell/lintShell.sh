#!/bin/sh

#  lintShell.sh
#  PodMan
#
#  Created by 万圣 on 2017/5/26.
#  Copyright © 2017年 万圣. All rights reserved.

#$2:sources
#$3:allowWarning
#$4:useLibraries
#$5:verbose

export LANG=en_US.UTF-8

echo "************************PodMan启动**************************"
echo "Pod lint: 开始 🚀🚀🚀🚀"
cd $1

/usr/local/bin/pod lib lint --sources=$2 $3 $4 $5 2>> log.txt

if [ $? -eq 0 ]
then
echo "PodProcessSuccessed"
echo "完成"
echo "**************************************************************"
else
echo "PodProcessFailed"
echo "完成"
echo "**************************************************************"
fi
