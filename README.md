# CdMTPBashCommand
A tiny script to change into the device's MTP directory in shell

##Usage
Run the script like that:

./cdmtp.sh \<a keyword to search the device via 'lsusb' command (i.e. corporation name)\>


## To make it available in each shell session:
- Put the script 'cdmtp.sh' into wherever you want and make it executable via 'chmod +x' command. 

- Edit .bashrc or .profile file and insert these 2 lines:

cdmtp_script_path='Give the path to cdmtp.sh here'

alias cdmtp=". $cdmtp_script_path"



http://storeous.com
