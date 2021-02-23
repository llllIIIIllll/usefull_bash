#!/bin/bash

export RR_ID=qtruck1

use_dji_lidar="qtruck7 qtruck8 qtruck9 qtruck10"
use_multi_lidar="qtruck1 qtruck2 qtruck3 qtruck4 qtruck4 qtruck5 qtruck6"

# if [[ "$use_dji_lidar" == *"$RR_ID"* ]]; then
#     echo "dji"
# elif [[ "$use_multi_lidar" == *"$RR_ID"* ]]; then
#     echo "muti"
# fi

# if [[ "$use_multi_lidar" == *"$RR_ID"* ]]; then
#     echo "muti"
# fi

for i in $use_dji_lidar 
do
    if [[ "$i" == "$RR_ID" ]]; then
        echo $i
        break;
    fi
done

for i in $use_multi_lidar 
do
    if [[ "$i" == "$RR_ID" ]]; then
        echo $i
        break;
    fi
done