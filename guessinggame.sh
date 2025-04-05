#!/bin/bash

# Function to count files in current directory
count_files() {
    ls -1 | wc -l
}

# Main game function
play_game() {
    local correct=$(count_files)
    local guess
    
    while true; do
        echo "How many files are in the current directory? Take a guess:"
        read guess
        
        if [[ $guess -lt $correct ]]; then
            echo "Your guess is too low. Try again!"
        elif [[ $guess -gt $correct ]]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! You guessed correctly. There are $correct files in the directory."
            break
        fi
    done
}

# Start the game
play_game
