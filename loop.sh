#!/bin/bash

start_time=$(date +%s)

while true; do
    current_time=$(date +%s)
    elapsed_time=$((current_time - start_time))
    
    hours=$((elapsed_time / 3600))
    minutes=$(( (elapsed_time % 3600) / 60 ))
    seconds=$((elapsed_time % 60))
    
    printf "\rElapsed Time: %02d:%02d:%02d" $hours $minutes $seconds
    sleep 1
done
