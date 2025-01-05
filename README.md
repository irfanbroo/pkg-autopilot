pkg-autopilot
Overview
pkg-autopilot is a versatile Bash script designed to automate the installation of software packages on Debian-based systems using apt. The script checks if the specified software is already installed and installs it if necessary. This tool ensures that your system has the required software installed efficiently with minimal manual intervention.

Prerequisites
The script is designed to run on Debian-based systems (e.g., Ubuntu).

Ensure you have root privileges or can run the script with sudo.

Usage
Clone the repository:

sh
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
Check for Arguments: Ensures that at least one software name is provided as a positional argument.

Check for Root Privileges: Ensures that the script is run with root privileges.

For Loop: Iterates through each software name provided:

Check if Installed: Uses which to check if the software is already installed.

Install Software: If the software is not found, it attempts to install it using apt.

Check Installation Success: Prints a success message if the installation is successful; otherwise, prints an error message.

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
