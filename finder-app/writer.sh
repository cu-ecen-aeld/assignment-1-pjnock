#!/bin/sh
writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
    echo "ERROR: Invalid Number of Arguments."
    echo "Total number of arguments should be 2."
    echo "The order of the arguments should be:"
    echo "  1) File Directory Path including filename."
    echo "  2) String to be written within the specified file."
    exit 1
    
elif [ -f ${writefile} ]
then
    echo "${writestr}" > ${writefile}
    exit 0
    
elif [ ! -f ${writefile} ]
then
    direc=${writefile%/*}
    file=${writefile##*/}
    mkdir -p ${direc}
    touch "${direc}/file"
    echo "${writestr}" > ${writefile}
    exit 0

else
    echo "File could not be created in the specified directory."
    exit 1
fi
   
     

