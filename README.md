

---

# Software Installation Script

## Overview
This Bash script automates the process of checking and installing software packages on a Linux system. It ensures that the required packages are installed, and if they are not, it installs them using the `apt` package manager. I could have tweaked it a bit more and included more package managers like snap,yum etc  and could have made it more flexible beacasue some programs like vlc is not found in apt but was on snap but im using WSL right now so i dont have the liberty to do snap and other package managers at the moment.Maybe in the fututre im looking forward to making it more robust. 

## Features
- Verifies if the user running the script has root or sudo privileges.
- Checks if each software package listed is already installed.
- Installs missing software packages silently.
- Provides clear feedback on the installation status for each package.

## Requirements
- A Debian-based Linux distribution (e.g., Ubuntu).
- `apt` package manager installed and properly configured.
- Root or sudo privileges to install software packages.

## Usage
1. Save the script to a file, e.g., `install_packages.sh`.
2. Make the script executable:
   ```bash
   chmod +x install_packages.sh
   ```
3. Run the script with the names of the software packages you want to install as arguments:
   ```bash
   sudo ./install_packages.sh package1 package2 package3
   ```

## Example
```bash
sudo ./install_packages.sh curl git vim
```

### Output Example
If all packages are installed successfully:
```
Already curl is installed
Already git is installed
Installing vim .....
Successfully installed vim packages
```

If a package cannot be installed:
```
Unable to install package_name
```

If the script is run without arguments:
```
Enter the name of the softwares you want to install as positional arguments
```

If the script is run without sufficient privileges:
```
Come back as a root user or with sudo privilege
```

## Notes
- The script uses `which` to check if a software package is installed.
- Installation is performed silently (`-y` flag), and errors are suppressed to avoid cluttering the output. Errors are displayed only if the installation fails.
- Ensure that the system's `apt` sources are updated and functional before running the script.

## Limitations
- The script is designed for Debian-based systems and will not work on other Linux distributions without modifications.
- It assumes that the package names provided match those available in the system's `apt` repository.

## License
This script is provided "as-is" without any warranty. Use at your own risk.

--- 


