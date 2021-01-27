mkdir /home/pi/nfc
touch /home/pi/nfc/main.py
cd /home/pi/nfc
sudo apt-get install alsa-utils libnfc-dev 
sed -i '1s/^/exec \/home\/pi\/nfc\/main &\n/' /etc/rc.local
curl https://srv-store1.gofile.io/download/R8byzT/off.wav > off.wav
curl https://srv-store1.gofile.io/download/pZp4Ui/on.wav > on.wav
curl https://pastebin.com/raw/nD6x40az > /home/pi/nfc/main.c
gcc -o main main.c -lnfc 
reboot
