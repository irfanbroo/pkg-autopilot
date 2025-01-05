Software Installation Script
Overview
This script automates the process of checking for and installing software packages on a Debian-based system using apt. It checks if the specified software is already installed, and if not, it proceeds to install it. This script is especially useful for ensuring that multiple software packages are installed efficiently with minimal manual intervention.

Prerequisites
The script is designed to run on Debian-based systems (e.g., Ubuntu).

Ensure you have root privileges or can run the script with sudo.

Usage
Clone the repository:

sh
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
Make the script executable:

sh
chmod +x 10.sh
Run the script with software names as positional arguments:

sh
sudo ./10.sh software1 software2 software3
Example:

sh
sudo ./10.sh vlc discord python3
Script Details
Check for Arguments: Ensures that at least one software name is provided as a positional argument.

Check for Root Privileges: Ensures that the script is run with root privileges.

For Loop: Iterates through each software name provided:

Check if Installed: Uses which to check if the software is already installed.

Install Software: If the software is not found, it attempts to install it using apt.

Check Installation Success: Prints a success message if the installation is successful; otherwise, prints an error message.

Example
sh
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
        sudo apt update &> /dev/null
        sudo apt install $softwares -y &> /dev/null
        if [ $? -eq 0 ]; then
            echo "Successfully installed $softwares packages"
        else
            echo "Unable to install $softwares"
        fi
    fi
done
Contributing
Contributions are welcome! If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request.
