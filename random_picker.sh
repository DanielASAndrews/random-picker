#!/bin/bash

# Check if names were provided as arguments
if [ $# -eq 0 ]; then
    echo "Usage: $0 name1 name2 name3 ..."
    echo "Example: $0 Alice Bob Charlie David"
    exit 1
fi

# Convert arguments to array
names=("$@")
total_names=${#names[@]}

echo "Starting random name selection from ${total_names} candidates:"
echo "${names[*]}"
echo "---"
echo "Type 'go' to select the next name, or 'quit' to exit"
echo ""

# Continue until all names are selected or user quits
while [ ${#names[@]} -gt 0 ]; do
    # Show remaining candidates
    echo "Remaining candidates: ${names[*]}"
    echo -n "Type 'go' to select next name: "
    
    # Read user input
    read user_input
    
    # Check if user wants to quit
    if [ "$user_input" = "quit" ]; then
        echo "Exiting..."
        exit 0
    fi
    
    # Check if user typed 'go'
    if [ "$user_input" = "go" ]; then
        # Generate random index
        random_index=$((RANDOM % ${#names[@]}))
        
        # Select and display the random name
        selected_name="${names[$random_index]}"
        echo "Selected: $selected_name"
        
        # Remove the selected name from the array
        names=("${names[@]:0:$random_index}" "${names[@]:$((random_index + 1))}")
        
        # Check if all names have been selected
        if [ ${#names[@]} -eq 0 ]; then
            echo "All names have been selected!"
        fi
        
        echo ""
    else
        echo "Invalid input. Please type 'go' to continue or 'quit' to exit."
        echo ""
    fi
done