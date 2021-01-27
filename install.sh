mkdir /home/pi/nfc
cd /home/pi/nfc
sudo apt-get install alsa-utils libnfc-dev i2c-tools
sudo i2cdetect -y 1
sudo sed -i '1s/^/exec \/home\/pi\/nfc\/main &\n/' /etc/rc.local
curl https://srv-store1.gofile.io/download/R8byzT/off.wav > off.wav
curl https://srv-store1.gofile.io/download/pZp4Ui/on.wav > on.wav
curl https://pastebin.com/raw/nD6x40az > /home/pi/nfc/main.c
gcc -o main main.c -lnfc 
zenity --info --text="The configuration menu will come up next. Make sure you enable i2c under advanced options!" --width 200 --height 100 --ok-label="I Understand"
sudo raspi-config