#!/bin/sh

time=$(date)
read -p "Enter some information > " messae
git add -A
git commit -m "$time-$messae"
git push
python -mwebbrowser https://github.com/healer512/my-image

