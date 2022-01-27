#!/bin/sh

time=$(date)
read -p "Enter some information > " messae
git add -A
git commit -m "$time-$messae"
git push
if [ -n $BROWSER ]; then
  $BROWSER 'https://github.com/healer512/my-image'
elif which xdg-open > /dev/null; then
  xdg-open 'https://github.com/healer512/my-image'
elif which gnome-open > /dev/null; then
  gnome-open 'https://github.com/healer512/my-image'
# elif bla bla bla...
else
  echo "Could not detect the web browser to use."
fi