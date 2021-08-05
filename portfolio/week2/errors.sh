#!/bin/bash

secret='shhh' #Don't tell anyone!
read -s -p "what's the secret code?"
#if the user types in the correct secret, tell them they got it right!
echo
if [ "$secret" = $REPLY ]; then
    echo "You got it right!"
    correct=true

else     
    echo "You got it wrong :("
    wrong=false

fi

echo

case $correct in

false)

    echo "Go Away!" #people who get it wrong need to be told to go away!

    ;;

true)

    echo "you have unlocked the secret menu!"

    #TODO: add a secret menu for people in the know.

    ;;

esac