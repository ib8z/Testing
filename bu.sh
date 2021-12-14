#!/bin/bash

#Welcome 
echo""
echo "start copy directory ..."
echo""


#Delete old directory
rm -rf /home/gk/Downloads/My_Files # select your path
rm -rf /media/gk/Backup/My_Files/  # select your path


#start Copy directorys↓


# copy source directory for backup directory
cp -r /home/gk/Documents/My_Files/ /home/gk/Downloads/ # select your path

echo ""
echo "Documents ---> Downloads = Done"
echo ""
sleep 1

# copy source directory for Backup_Hard directory
cp -r /home/gk/Documents/My_Files/ /media/gk/Backup/

echo "Documents ---> Backup_Hard = Done"
echo ""
sleep 1

echo "-------------------------------------"

#print Size of Files
echo ""
echo "Source"
du -sb /home/gk/Documents/My_Files/
echo ""

echo "Downloads" 
du -sb /home/gk/Downloads/My_Files/
echo ""

echo "Backup_Hard"
du -sb /media/gk/Backup/My_Files/
echo ""



#End
echo "-------------------------------------"
echo ""
echo "We are Done boss !!!"
