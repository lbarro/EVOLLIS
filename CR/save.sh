#!/bin/sh
FILE="CR"
if [ -f ./${FILE}.pdf ]
then
    DATE=`date | tr -s ' ' '_' | tr -d ','`
    cp ${FILE}.pdf ~/Dropbox/MongoDB/DocSortantsValides/${FILE}.${DATE}.pdf
    rm -i ${FILE}.pdf
else
    echo "file ${FILE}.pdf missing"
fi 