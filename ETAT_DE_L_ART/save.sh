#!/bin/sh
if [ -f ./"rapport.pdf" ]
then
    DATE=10_00_00 #date | tr -s ' ' '_' | tr -d ','`
    cp rapport.pdf ~/Dropbox/MongoDB/Rapport/rapport.${DATE}.pdf
    rm -i rapport.pdf
else
    echo "file rapport.pdf missing"
fi