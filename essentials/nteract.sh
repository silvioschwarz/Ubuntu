#! /bin/sh

#wget -c -O nteract.AppImage https://github.com/nteract/nteract/releases/download/v0.12.3/nteract-0.12.3-x86_64.AppImage
#sudo chmod +rwx nteract.AppImage
#./nteract.AppImage

wget -c -O nteract.deb https://github.com/nteract/nteract/releases/download/v0.12.3/nteract_0.12.3_amd64.deb
sudo dpkg -i nteract.deb

python3 -m pip install ipykernel  # install the python kernel (ipykernel) globally
python3 -m ipykernel install      # install python kernel into nteract's available kernel list


npm install -g ijavascript

