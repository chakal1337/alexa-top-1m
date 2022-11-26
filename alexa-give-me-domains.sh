#!/bin/bash
wget -c s3.amazonaws.com/alexa-static/top-1m.csv.zip;
unzip top-1m.csv.zip;
cd top-1m.csv;
cat top-1m.csv | sed -e "s/.*,//g" > top1m.txt;
for i in $(cat top1m.txt); do echo https://$i/ >> top1mhttp.txt; done;
cat top1mhttp.txt | head -n 100000 > top100k.txt;
cat top1mhttp.txt | head -n 10000 > top10k.txt;
cat top1mhttp.txt | head -n 1000 > top1k.txt;
cat top1mhttp.txt | head -n 100 > top100.txt;
cat top1mhttp.txt | head -n 10 > top10.txt;
