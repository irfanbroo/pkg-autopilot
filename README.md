markdown
# pkg-autopilot

## Overview
`pkg-autopilot` is a Bash script designed to automate the installation of software packages on a Debian-based system using `apt`. It checks if the specified software is already installed and installs it if necessary.

## Prerequisites
- Designed for Debian-based systems (e.g., Ubuntu).
- Root privileges or the ability to run commands with `sudo`.

## Usage
1. **Clone the repository**:
   ```sh
   git clone https://github.com/your-username/pkg-autopilot.git
   cd pkg-autopilot
Make the script executable:

sh
chmod +x pkg-autopilot.sh
Run the script with software names as positional arguments:

sh
sudo ./pkg-autopilot.sh software1 software2 software3
Example:

sh
sudo ./pkg-autopilot.sh vlc discord python3
Script Details
Positional Arguments Check: Ensures that at least one software name is provided.

Root Privileges Check: Ensures the script is run with root privileges.

For Loop: Iterates through each software name:

Check if Installed: Uses which to see if the software is installed.

Install Software: Installs the software using apt.

Check Installation Success: Prints a success or error message based on the installation result.

Example
bash
#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Enter the name of the softwares you want to install as positional arguments"
    exit 1
fi

if [ $(id -u) -ne 0 ]; then
    echo "Come back as a root user or with sudo privileges"
    exit 1
fi

for softwares in "$@"; do
    if which $softwares &> /dev/null; then
        echo "Already $softwares is installed"
    else
        echo "Installing $softwares ....."
        sudo apt install $softwares -y &> /dev/null
        if [ $? -eq 0 ]; then
            echo "Successfully installed $softwares packages"
        else
            echo "Unable to install $softwares"
        fi
    fi
done
Contributing
Contributions are welcome! If you find any bugs or have suggestions, please open an issue or submit a pull request.
