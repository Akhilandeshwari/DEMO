#!/usr/bin/env bash
function guess:
{
        echo "Guess the Number of Files in the present Directory"
        read nf
        n='find . -type f | wc -l'
        until [ $nf -eq $n ]
        do
                if [ $nf -lt $n ]
                then
                        echo "Your guess is below the score. Try to increase it"
                        guess
                elif [ $nf -gt $n ]
                        echo "Your guess is too high. Try to decrease the value"
                        guess
                else
                        echo "Congratualations!!! You have won the game"
                fi
        done
}
echo "Welcome to the Guessing Game"
echo "Try to guess the Number of files inthe present working directory"
guess