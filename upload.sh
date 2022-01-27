#!/bin/sh

time=$(date)
read -p "Enter some information > " messae
git add -A
git commit -m "$time-$messae"
git pull