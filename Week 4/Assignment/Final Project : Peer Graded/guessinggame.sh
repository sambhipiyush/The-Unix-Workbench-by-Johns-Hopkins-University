#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame(){
    no_of_files=$(pwd | ls | wc -l)
    while true;
    do
        echo "pleas enter your guess"
        read  number
        if [ $number -lt $no_of_files ]
        then
            echo "Your guess is less than the number of files"
        elif [ $number -gt $no_of_files ]
        then
            echo "Your guess is greater than the number of files"
        else
            echo "Congratulation,your guess is correct!"
        break;
        fi
    done
}

echo "Guess how many files are there in current directory?"
guessinggame
