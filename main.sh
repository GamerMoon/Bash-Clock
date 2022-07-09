#!/bin/bash
while :; do
  # store start date in variable
  printf -v start_day '%(%a %b %e %Y)T'
  day=$start_day

  clear
  echo "$day"
  while sleep 1 && [[ $start_day = $day ]]; do
      printf -v day '%(%a %b %e %Y)T'
      printf '\r%(%I:%M %p)T'
  done
done