Overview
This Bash script automates the process of checking and installing software packages on a Linux system. It ensures that the required packages are installed, and if they are not, it installs them using the apt package manager.

Features
Verifies if the user running the script has root or sudo privileges.
Checks if each software package listed is already installed.
Installs missing software packages silently.
Provides clear feedback on the installation status for each package.
Requirements
A Debian-based Linux distribution (e.g., Ubuntu).
apt package manager installed and properly configured.
Root or sudo privileges to install software packages.
Usage
Save the script to a file, e.g., install_packages.sh.
Make the script executable:
bash
Copy code
chmod +x install_packages.sh
Run the script with the names of the software packages you want to install as arguments:
bash
Copy code
sudo ./install_packages.sh package1 package2 package3
Example
bash
Copy code
sudo ./install_packages.sh curl git vim
Output Example
If all packages are installed successfully:

csharp
Copy code
Already curl is installed
Already git is installed
Installing vim .....
Successfully installed vim packages
If a package cannot be installed:

css
Copy code
Unable to install package_name
If the script is run without arguments:

javascript
Copy code
Enter the name of the softwares you want to install as positional arguments
If the script is run without sufficient privileges:

csharp
Copy code
Come back as a root user or with sudo privilege
Notes
The script uses which to check if a software package is installed.
Installation is performed silently (-y flag), and errors are suppressed to avoid cluttering the output. Errors are displayed only if the installation fails.
Ensure that the system's apt sources are updated and functional before running the script.
Limitations
The script is designed for Debian-based systems and will not work on other Linux distributions without modifications.
It assumes that the package names provided match those available in the system's apt repository.
License
This script is provided "as-is" without any warranty. Use at your own risk.
