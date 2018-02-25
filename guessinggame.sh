#!/usr/bin/env bash
# File: guessinggame.sh
# Author: Ben Zarras

won_game=0

function getScore {
  local num_files=$(ls -1A | wc -l)
  local score=$(expr $1 - $num_files)
  echo $score
}

echo "How many files are in this directory? Take a guess:"

while [[ $won_game -ne 1 ]]
do
  read answer
  score=$(getScore $answer)
  if [[ $score -eq 0 ]]
  then
    echo "YOU WON. NICE JOB"
    let won_game=1
  elif [[ $score -gt 0 ]]
  then
    echo "Too high. Take another guess:"
  else
    echo "Too low. Take another guess:"
  fi
done
