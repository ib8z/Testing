#!/bin/bash

#Welcome 
echo ""
echo "start copy directory ..."
echo ""
echo "-------------------------------------"
echo ""


#start Copy directorys↓


# copy source directory for backup directory
echo "Documents ---> Downloads"
rm -rf /home/gk/Downloads/My_Files                      # Delete
cp -r /home/gk/Documents/My_Files/ /home/gk/Downloads/  # copy
echo "Documents ---> Downloads = Done"
sleep 1


# copy source directory for Backup_Hard directory
echo "" 
echo "Documents ---> Backup_Hard"
rm -rf /media/gk/Backup/My_Files/                       # Delete
cp -r /home/gk/Documents/My_Files/ /media/gk/Backup/    # copy
echo "Documents ---> Backup_Hard = Done" 
sleep 1


# copy source directory for Backup_Hard directory
echo "" 
echo "Documents ---> Home"
rm -rf /home/gk/My_Files                                # Delete
cp -r /home/gk/Documents/My_Files/ /home/gk/My_Files    # copy
echo "Documents ---> Home = Done" 
sleep 1



#--------------------------------------------------------------



#print Size of Files
echo ""
echo "-------------------------------------"
echo ""


echo "Source"
du -sb /home/gk/Documents/My_Files/
echo ""

echo "Downloads" 
du -sb /home/gk/Downloads/My_Files/
echo ""

echo "Home"
du -sb /home/gk/My_Files
echo ""

echo "Backup_Hard"
du -sb /media/gk/Backup/My_Files/
echo ""



#End
echo "-------------------------------------"
echo ""
echo "We are Done boss !!!"
echo ""
