#!/bin/bash
if [ $# -eq 0 ];
then
        echo "Enter the name of the softwares you want to install as positional arguments"
        exit 1
fi

if [ $(id -u) -ne 0 ];
then
        echo "Come  back as a root user or with sudo privilege"
        exit 1
fi
already_ins=true
ins_count=0
for softwares in $@
do
        if which $softwares &> /dev/null
        then
                echo "Already $softwares is installed"
        else
                already_ins=false
                echo "Installing $softwares ....."
                sudo apt install $softwares -y &> /dev/null
                if [ $? -eq 0 ];
                then
                        echo "Successfully installed $softwares packages"
                        ins_count=$((ins_count + 1))
                else

                        echo "Unable to install $softwares"
                fi
        fi
done
# Notify if all software packages were already installed    
if $already_ins; then
        echo "All the softwares are already installed"
else
        echo "$ins_count software packages were succesfully installed"
fi

