sudo apt update && sudo apt upgrade -y
sudo apt install ffmpeg -y
ffmpeg -version
sudo apt install nmap -y
nmap --version
sudo apt install vlc -y
sudo nano /etc/systemd/system/stream.service
....................
[Unit]
Description=VV Python Service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /home/live/vv.py
WorkingDirectory=/home/live
Restart=always
RestartSec=5
User=pi

[Install]
WantedBy=multi-user.target
............................
sudo systemctl daemon-reload
sudo systemctl enable stream.service
sudo systemctl start stream.service
.............
sudo systemctl stop stream.service
sudo systemctl restart stream.service
sudo systemctl disable stream.service

...............
sudo nano /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
[connection]
wifi.powersave = 2
..........................
sudo apt install ffmpeg nmap vlc -y
sudo apt install python3-venv python3-full -y
cd /home/live

python3 -m venv venv
source venv/bin/activate
pip install onvif-zeep
pip install wsdiscovery
cd /home/live
git clone https://github.com/onvif/specs.git
......................
vcgencmd measure_temp

pip install psutil
.................................
pip install --upgrade pip setuptools wheel

pip install psutil
pip install torch --index-url https://download.pytorch.org/whl/cpu

pip install ultralytics --no-deps
pip install opencv-python
pip install matplotlib pillow pyyaml requests scipy torchvision ultralytics-thop polars
pip install torchvision --index-url https://download.pytorch.org/whl/cpu
python -c "from ultralytics import YOLO; print('YOLO OK')"

