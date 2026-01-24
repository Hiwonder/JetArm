#!/bin/bash  

source_file="/home/ubuntu/share/tmp/.hiwonderrc"

destination_file="/home/ubuntu/.hiwonderrc"

while inotifywait -e modify "$source_file"; do  

    cp "$source_file" "$destination_file"  
done  

while inotifywait -e modify "$destination_file"; do  

    cp "$destination_file" "$source_file"  
done   

