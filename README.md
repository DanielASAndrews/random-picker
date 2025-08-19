# Random Name Picker

A simple bash script that randomly selects names from a list, removing each selected name from the candidate pool. The script waits for user confirmation before each selection, making it perfect for team assignments, raffles, or any scenario where you need to randomly pick from a group of people.

## Features

- **Random Selection**: Uses bash's built-in `$RANDOM` for fair random selection
- **Interactive**: Waits for user to type "go" before each selection
- **Non-Repeating**: Removes selected names from the candidate pool
- **User-Friendly**: Clear prompts and feedback throughout the process
- **Flexible**: Accepts any number of names as command-line arguments
- **Safe Exit**: Allows users to quit at any time

## Installation

1. Download the script:
```bash
# Option 1: Create the file manually
touch random_picker.sh

# Option 2: Download from your preferred method
```

2. Make it executable:
```bash
chmod +x random_picker.sh
```

## Usage

### Basic Usage
```bash
./random_picker.sh name1 name2 name3 ...
```

### Examples
```bash
# Pick from a small team
./random_picker.sh Alice Bob Charlie David

# Pick from a larger group
./random_picker.sh Alice Bob Charlie David Eve Frank Grace Henry Irene Jack

# Pick from team members with spaces in names
./random_picker.sh "John Smith" "Jane Doe" "Mike Johnson" "Sarah Wilson"
```

### Interactive Commands
- Type `go` to select the next random name
- Type `quit` to exit the program
- Any other input will show an error message and prompt again

## Example Session

Starting random name selection from 4 candidates:
Alice Bob Charlie David
Type 'go' to select the next name, or 'quit' to exit
Remaining candidates: Alice Bob Charlie David
Type 'go' to select next name: go
Selected: David
Remaining candidates: Alice Bob Charlie
Type 'go' to select next name: go
Selected: Alice
Remaining candidates: Bob Charlie
Type 'go' to select next name: go
Selected: Charlie
Remaining candidates: Bob
Type 'go' to select next name: go
Selected: Bob
All names have been selected!

## Use Cases

- **Sprint Planning**: Randomly assign tickets to team members
- **Code Reviews**: Randomly select reviewers
- **Team Meetings**: Choose who presents next
- **Classroom Activities**: Randomly call on students
- **Raffles**: Draw winners from a list of participants
- **Game Nights**: Select players for different rounds

## Requirements

- Bash shell (available on most Unix-like systems including macOS and Linux)
- No additional dependencies required

## Troubleshooting

### Permission Denied
```bash
chmod +x random_picker.sh
```

### No Names Provided
The script will show usage instructions if no names are provided:
```bash
./random_picker.sh
# Output: Usage: ./random_picker.sh name1 name2 name3 ...
```

### Names with Special Characters
For names containing special characters or spaces, use quotes:
```bash
./random_picker.sh "O'Connor" "Smith-Jones" "Dr. Johnson"
```

## Contributing

Feel free to submit issues or pull requests to improve the script. Some potential enhancements:
- Save/load name lists from files
- Add timestamps to selections
- Export results to a file
- Add different selection modes (e.g., weighted selection)

## License

This script is provided as-is for educational and practical use. Feel free to modify and distribute as needed.