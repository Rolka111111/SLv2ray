cd ~
apt update
apt install git
apt install python3
apt install python3-pip
git clone https://github.com/Slehibot/SLv2ray
cd SLv2ray
chmod +x *
pip3 install -r requirements.txt
bash v2ray.sh
