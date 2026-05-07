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
sudo apt install -y python3-opencv ffmpeg
pip install polars

pip install numpy pillow pyyaml matplotlib tqdm requests
pip install ultralytics




//////////////////////////////
uname -m
    2  python3 --version
    3  sudo apt update
    4  sudo apt install -y python3.11 python3.11-venv python3.11-dev
    5  sudo apt update
    6  sudo apt install -y   make build-essential   libssl-dev zlib1g-dev   libbz2-dev libreadline-dev   libsqlite3-dev libffi-dev   liblzma-dev tk-dev   curl git
    7  curl https://pyenv.run | bash
    8  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    9  echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
   10  echo 'eval "$(pyenv init -)"' >> ~/.bashrc
   11  source ~/.bashrc
   12  pyenv --version
   13  pyenv install 3.11.9
   14  pyenv global 3.11.9
   15  exec $SHELL
   16  /usr/bin/python3.13 -m pip install --user onnxruntime numpy
   17  python --version
   18  which python
   19  python -m venv yolo311
   20  source yolo311/bin/activate
   21  pip install --upgrade pip setuptools wheel
   22  sudo apt install -y python3-opencv ffmpeg
   23  python - <<EOF
   24  import cv2
   25  print("OpenCV OK:", cv2.__version__)
   26  EOF
   27  pip install ultralytics --no-deps
   28  pip install numpy pillow pyyaml matplotlib tqdm requests
   29  pip install psutil
   30  pip install polars
   31  python - <<EOF
   32  from ultralytics import YOLO
