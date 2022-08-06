#!/bin/sh

function sleep_and_echo {
    sleep $(echo "scale=2; $1 / 10" | bc)
    echo $1
}


for val in "$@"; do
    sleep_and_echo "$val" &
done

wait
