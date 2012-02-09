#!/bin/sh
if [ -f ./"rapport.pdf" ]
then
    DATE=`date | tr -s ' ' '_' | tr -d ','`
    cp rapport.pdf ~/Dropbox/MongoDB/Rapport/rapport.${DATE}.pdf
    rm -i rapport.pdf
else
    echo "file rapport.pdf missing"
fi 