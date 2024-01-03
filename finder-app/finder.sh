#!/bin/sh
filesdir=$1
searchstr=$2


if [ $# -ne 2 ]
then
    echo "ERROR: Invalid Number of Arguments."
    echo "Total number of arguments should be 2."
    echo "The order of the arguments should be:"
    echo "  1) File Directory Path."
    echo "  2) String to be searched in the specified directory path."
    exit 1

elif [ ! -d "${filesdir}" ]
then
    echo "ERROR: ${filesdir} does not represent a directory on the filesystem."
    exit 1
    
else
    X=$(grep -lr "${searchstr}" "${filesdir}" | wc -l)
    Y=$(grep -r "${searchstr}" "${filesdir}" | wc -l)
    echo "The number of files are $X and the number of matching lines are $Y."
    exit 0
fi


