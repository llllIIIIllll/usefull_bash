#!/bin/bash

prodect_name=$1
stage=$2
version=$3
acts=$4

qomolo_get_stage_list=`curl -d "name=${prodect_name}" -d "stage=${stage}" -d "version=${version}" archive.qomolo.com/-/ci-data/api/v1/acts/${acts} -X PUT 2>/dev/null`

# qomolo_get_stage_list=`curl -d "name=dev_dist" -d "stage=alpha" -d "version=all" 127.0.0.1:8081/acts/list -X PUT`

echo $qomolo_get_stage_list | tr "\"" "\n" > /tmp/qomolo_get_stage_list

line_numbers=`cat /tmp/qomolo_get_stage_list | wc -l`

for ((i=0;i<=line_numbers-6;i=i+6))
do
    ((line=i+2))
    version=`sed -n "${line}p" /tmp/qomolo_get_stage_list`
    ((line=i+4))
    url=`sed -n "${line}p" /tmp/qomolo_get_stage_list`
    ((line=i+6))
    date=`sed -n "${line}p" /tmp/qomolo_get_stage_list`
    echo $version -- $date -- $url
done