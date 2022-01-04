#!/bin/bash

#Welcome 
echo ""
echo "start copy directory ..."
echo ""
echo "-------------------------------------"
echo ""



#start Backup↓

# Copy Some Important Files
echo "Copy Some Important Files ---> Documents"
cp -r /home/gk/.bashrc /home/gk/Documents/My_Files/Backup_Files_Setting/Bashrc/bashrc
echo "Copy Some Important Files ---> Documents = Done"
sleep 1


# copy source directory for backup directory
echo ""
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


#Copy to other user
echo "" 
echo "Documents ---> User"
sudo rm -rf /home/Backup/My_Files                            # Delete
sudo cp -r /home/gk/Documents/My_Files/ /home/Backup/        # copy
echo "Documents ---> USer = Done" 
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

echo "User"
sudo du -sb /home/Backup/My_Files
echo ""

echo "Backup_Hard"
du -sb /media/gk/Backup/My_Files/
echo ""

########################################################################################################################

#3.1 USB    (Delete old file and code from source)
echo "Documents ---> 3.1"
rm -rf /media/                               # Delete
cp -r /home/ /media/                         # copy
echo "Documents ---> 3.1 = Done"
sleep 1



#HHD Hard   (Delete old file and code from source)
echo "" 
echo "Documents ---> HHD"
rm -rf /media/                                # Delete
cp -r /home/ /media/                          # copy
echo "Documents ---> HHD = Done"
sleep 1



#3.0 USB    (Delete old file and code from source)
echo "" 
echo "Documents ---> 3.0"
rm -rf /media/                                # Delete
cp -r /home/ /media/                          # copy
echo "Documents ---> 3.0 = Done"
sleep 1



#2.0 USB    (Delete old file and code from source)
echo "" 
echo "Documents ---> 2.0"
rm -rf /media/                                  # Delete
cp -r /home/ /media/                            # copy
echo "Documents ---> 2.0 = Done"
sleep 1



#--------------------------------------------------------------



#print size
echo ""
echo "-------------------------------------"
echo ""


echo "3.1 USB"
du -sb /media/3.1
echo ""

echo "HHD" 
du -sb /media/HHD
echo ""

echo "3.0 USB"
du -sb /media/3.0
echo ""

echo "2.0 USB"
du -sb /media/2.0
echo ""


#Done
echo "-------------------------------------"
echo ""
echo "We are Done boss !!!"
echo ""
