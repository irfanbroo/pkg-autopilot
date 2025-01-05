#!/bin/bash
if [ $# -eq 0 ];
then
        echo "Enter the name of the softwares you want to install as positional arguments"
        exit 1
fi

if [ $(id -u) -ne 0 ];
then
        echo "Come  back as a root user or with sudo privilage"
        exit 1
fi

for softwares in $@
do
        if which $softwares &> /dev/null
        then
                echo "Already $softwares is installed"
        else
                echo "Installing $softwares ....."
                sudo apt install $softwares -y &> /dev/null
                if [ $? -eq 0 ];
                then
                        echo "Successfully installed $softwares packages"
                else

                        echo "Unable to install $softwares"
                fi
        fi
done
