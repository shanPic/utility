#!/bin/bash

####################################
# pull all git repo in current dir #
###################################

echo ====================================================
for dir in `ls .`
do
	if [ -d $dir ]
	then
		pushd $dir > /dev/null
		git pull &> /dev/null
		if [ -d ".git" ]; then 
			basename `pwd`
			if [ $? -ne 0 ]; then
				echo "pull Abort!!!"
			else
				echo "OK"
			fi
			echo ----------------
		fi
		popd > /dev/null
	fi
done

echo ====================================================

