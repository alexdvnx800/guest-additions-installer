#!/bin/bash
printf " 
                                                                                                         
  ##    #  #   ####    ##    #####           #    ###    ###    ###    #####  ###     ##    #  #    ##   
 #  #   #  #   #      #  #     #            # #   #  #   #  #    #       #     #     #  #   ## #   #  #  
 #      #  #   ###     #       #           #   #  #  #   #  #    #       #     #     #  #   # ##    #    
 # ##   #  #   #        #      #           #####  #  #   #  #    #       #     #     #  #   #  #     #   
 #  #   #  #   #      #  #     #           #   #  #  #   #  #    #       #     #     #  #   #  #   #  #  
  ##     ##    ####    ##      #           #   #  ###    ###    ###      #    ###     ##    #  #    ##   
                                                                                                         
                                                                                                         
                                                               
 ###    #  #    ##    #####    #    #      #      ####   ###   
  #     ## #   #  #     #     # #   #      #      #      #  #  
  #     # ##    #       #    #   #  #      #      ###    #  #  
  #     #  #     #      #    #####  #      #      #      ###   
  #     #  #   #  #     #    #   #  #      #      #      #  #  
 ###    #  #    ##      #    #   #  ####   ####   ####   #  #  
                                                                                 
"
read -p "you want to install the guest additions? [y/n]: " start
if [ "$start" == "y" ] || [ "$start" == "Y" ]; then
    echo "the guestaddditions will be installed"
	sudo apt update
	sudo apt upgrade
	sudo mkdir -p /mnt/cdrom
	sudo mount /dev/cdrom /mnt/cdrom
	cd /mnt/cdrom
	sudo sh ./VBoxLinuxAdditions.run --nox11
	xdg-open "https://github.com/alexdvnx800/guest-additions-installer"
elif [ "$start" == "n" ] || [ "$start" == "N" ]; then
    echo "good bay"
    exit
fi	