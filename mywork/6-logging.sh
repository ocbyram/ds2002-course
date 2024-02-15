#!/bin/bash

#log a warning message
logfile=".logging.log"

#Parameters to use for the log message
NOW=`date`
STATUS="Warning"
MSG="This is a warning message in the log file."

#Append to the log file
echo $NOW - $Status - $MSG >> logging.log


