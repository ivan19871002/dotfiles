#!/bin/bash
# Find out current screen width and hight
_COLUMNS=$(tput cols)
# Set default message if ( input not provided
_MESSAGE=" FBI Warining "
# Calculate x and y coordinates so that we can display $MESSAGE
# centered in the screen
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")
# Alright display message stored in $_MESSAGE
echo " "
echo -e "${spaces}\033[41;37;5m FBI WARNING \033[0m"
echo " "
echo "Federal Law provides severe civil and criminal penalties for the unauthorized reproduction, distribution, or exhibition of copyrighted motion pictures (Title 17, United States Code, Sections 501 and 508). The Federal Bureau of Investigation investigates allegations of criminal copyright infringement"]
_COLUMNS=$(tput cols)
# Set default message if ( input not provided
_MESSAGE="(Title 17, United States Code, Section 506)."
# Calculate x and y coordinates so that we can display $MESSAGE
# centered in the screen
y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
spaces=$(printf "%-${y}s" " ")
# Alright display message stored in $_MESSAGE
echo -e "${spaces}(Title 17, United States Code, Section 506)."
echo " "
