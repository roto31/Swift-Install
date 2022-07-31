#!/bin/bash

#Variables
#Applications - Add any Application here with its Installomater label as the variable and Common Name after
firefoxpkg="Firefox"
atom="Atom"
brave="Brave"
dialogCMD="/usr/local/bin/dialog"

path="/usr/local/Installomator/Installomator.sh"
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

echo "$result"
echo "application = $application"

sudo -s $"$path" "$application"
