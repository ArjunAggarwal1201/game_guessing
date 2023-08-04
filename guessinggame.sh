function check_guess {
    if [[ $1 -lt $2 ]]; then
        echo "Too low! Try again."
    elif [[ $1 -gt $2 ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! Your guess is correct!"
        exit 0
    fi
}


num_files=$(ls -A | wc -l)


echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"


while true; do
    read guess
    if [[ $guess =~ ^[0-9]+$ ]]; then
        check_guess $guess $num_files
    else
        echo "Invalid input. Please enter a number."
    fi
done