#! /bin/sh


echo -n "REFIND MINIMAL THEME"
echo

#remove old themes
DIR="/boot/efi/EFI/refind/refind-theme-regular/"
REFINDDIR="/boot/efi/EFI/refind/"
sudo rm -rf ${DIR}/{regular-theme,refind-theme-regular}
sudo cp -r refind-theme-regular ${REFINDDIR}
sudo rm -rf ${DIR}/{src,.git}

#download regular theme
#git clone https://github.com/EvanPurkhiser/rEFInd-minimal.git
#git clone https://github.com/andersfischernielsen/rEFInd-minimal-black.git #black
git clone https://github.com/munlik/refind-theme-regular.git
sudo cp -r refind-* ${REFINDDIR}

FILE="/boot/efi/EFI/refind/refind.conf"
#setup regular theme
LINE="\ninclude refind-theme-regular/theme.conf\n" 
grep -q "$LINE" "$FILE" ||  echo "$LINE" |  sudo tee -a "$FILE"  > /dev/null 
LINE="\ndont_scan_files grubx64.efi,shim.efi,MokManager.efi,shimx64.efi,mmx64.efi,fwupx64.efi\n" 
grep -q "$LINE" "$FILE" ||  echo "$LINE" |  sudo tee -a "$FILE"  > /dev/null
LINE="\nfold_linux_kernels false\n" 
grep -q "$LINE" "$FILE" ||  echo "$LINE" |  sudo tee -a "$FILE"  > /dev/null

#change Linux sign to TUX
DIR="/boot/efi/EFI/refind/refind-theme-regular/icons/128-48"
sudo mv ${DIR}/os_ubuntu.png ${DIR}/os_ubuntu.old.png
sudo cp ${DIR}/os_linux.png ${DIR}/os_ubuntu.png

DIR="/boot/efi/EFI/refind/refind-theme-regular/icons/256-96"
sudo mv ${DIR}/os_ubuntu.png ${DIR}/os_ubuntu.old.png
sudo cp ${DIR}/os_linux.png ${DIR}/os_ubuntu.png
DIR="/boot/efi/EFI/refind/refind-theme-regular/icons/384-144"
sudo mv ${DIR}/os_ubuntu.png ${DIR}/os_ubuntu.old.png
sudo cp ${DIR}/os_linux.png ${DIR}/os_ubuntu.png

#change Linux sign to TUX
DIR="/boot/efi/EFI/refind/refind-theme-regular/icons/128-48"
sudo mv ${DIR}/os_elementary.png ${DIR}/os_elementary.old.png
sudo cp ${DIR}/os_linux.png ${DIR}/os_elementary.png
DIR="/boot/efi/EFI/refind/refind-theme-regular/icons/256-96"
sudo mv ${DIR}/os_elementary.png ${DIR}/os_elementary.old.png
sudo cp ${DIR}/os_linux.png ${DIR}/os_elementary.png
DIR="/boot/efi/EFI/refind/refind-theme-regular/icons/384-144"
sudo mv ${DIR}/os_elementary.png ${DIR}/os_elementary.old.png
sudo cp ${DIR}/os_linux.png ${DIR}/os_elementary.png


sudo rm -r refind-theme-regular

