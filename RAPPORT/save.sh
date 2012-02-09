#!/bin/sh
DATE=`date | tr -s ' ' '_' | tr -d ','`
cp rapport.pdf rapport.${DATE}.pdf