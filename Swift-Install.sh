#!/bin/bash
#Swift-Installer
#Based on swiftDialog and Installomater 
#roto31
#Credits to Bart Reardon for developing andf maintaining #swiftDialog and the developers and maintainers of the Installomater script

#Variables
#Applications - Add any Application here with its Installomater label as the variable and Common Name after. Add the common name to the "selectvalues" under 
# swiftDialog variables. 
firefoxpkg="Firefox"
atom="Atom"
brave="Brave"
dialogCMD="/usr/local/bin/dialog"

#Default path to Installomater
path="/usr/local/Installomator/Installomator.sh"

#swiftDialog variables
title="Select Your Application"
message="The below applications are available to install for your computer."
selecttitle="Applications Available"
selectvalues="Firefox,Atom,Brave"

complete=""


cmd="$dialogCMD -p --title '${title}' \
    --message '${message}' \
    --selecttitle '${selecttitle}' \
    --selectvalues '${selectvalues}'"


returnValue() {
    echo "${1}" | grep "${2} :" | awk -F " : " '{print $NF}'
}

while [[ -z $complete ]]; do
    result=$(eval $cmd)
    application=$(returnValue "$result" "$selecttitle")
    if [[ ! -z $application ]]; then
        complete="1"
    fi
done

#Install Function
echo "$result"
echo "application = $application"

sudo -s $"$path" "$application"

