#!/bin/bash
PSCMD="ps aux | grep -v grep | grep python"
eval ${PSCMD}
ID=$(zenity --entry --text="kill process id:") > /dev/null 2>&1
kill -9 $ID
cd log
ls -a | grep -v -E '^\.' | xargs rm -rf
eval ${PSCMD}