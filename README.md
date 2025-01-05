# pkg-autopilot

## Overview
`pkg-autopilot` is a versatile Bash script designed to automate the installation of software packages on Debian-based systems using `apt`. The script checks if the specified software is already installed and installs it if necessary. This tool ensures that your system has the required software installed efficiently with minimal manual intervention.

## Prerequisites
- The script is designed to run on Debian-based systems (e.g., Ubuntu).
- Ensure you have root privileges or can run the script with `sudo`.

## Usage
1. **Clone the repository:**
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
sudo ./pkg-autopilot.sh vlc discord 
