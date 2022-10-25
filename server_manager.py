import json
import subprocess
import requests

public_ip = requests.get('https://api.ipify.org')
public_ip = public_ip.text


def create_new_config():
    import uuid
    with open('/usr/local/etc/xray/config.json') as json_file:  # /usr/local/etc/xray/config.json
        json_file = json.load(json_file)
    uuid = uuid.uuid4()
    json_file["inbounds"][0]["settings"]["clients"].append({"id": f"{uuid}"})
    vless_config = f"""vless://{uuid}@{public_ip}:443?security=tls&encryption=none&type=ws&sni=Smart.Life.Team#Smart-Life-VPN"""
    with open('/usr/local/etc/xray/config.json', 'w') as json_write:
        json.dump(json_file, json_write)
    subprocess.run("sudo service xray restart", shell=True)
    
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (Days) : " masaaktif
hariini=`date -d "0 days" +"%Y-%m-%d"`
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#xray-vmess-tls$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'"' /etc/xray/config.json
sed -i '/#xray-vmess-nontls$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'"' /etc/xray/config.json
cat>/etc/xray/vmess-$user-tls.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "${tls}",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess/",
      "type": "none",
      "host": "",
      "tls": "tls"
}
EOF
cat>/etc/xray/vmess-$user-nontls.json<<EOF
      {
      "v": "2",
      "ps": "${user}",
      "add": "${domain}",
      "port": "${nontls}",
      "id": "${uuid}",
      "aid": "0",
      "net": "ws",
      "path": "/vmess/",
      "type": "none",
      "host": "",
      "tls": "none"
}
EOF
vmess_base641=$( base64 -w 0 <<< $vmess_json1)
vmess_base642=$( base64 -w 0 <<< $vmess_json2)
xrayv2ray1="vmess://$(base64 -w 0 /etc/xray/vmess-$user-tls.json)"
xrayv2ray2="vmess://$(base64 -w 0 /etc/xray/vmess-$user-nontls.json)"
rm -rf /etc/xray/vmess-$user-tls.json
rm -rf /etc/xray/vmess-$user-nontls.json
systemctl restart xray.service
service cron restart
clear
echo -e ""
echo -e "======-XRAYS/VMESS-======"
echo -e "Remarks     : ${user}"
echo -e "IP/Host     : ${MYIP}"
echo -e "Address     : ${domain}"
echo -e "Port TLS    : ${tls}"
echo -e "Port No TLS : ${nontls}"
echo -e "User ID     : ${uuid}"
echo -e "Alter ID    : 0"
echo -e "Security    : auto"
echo -e "Network     : ws"
echo -e "Path        : /vmess/"
echo -e "Created     : $hariini"
echo -e "Expired     : $exp"
echo -e "========================="
echo -e "Link TLS    : ${xrayv2ray1}"
echo -e "========================="
echo -e "Link No TLS : ${xrayv2ray2}"
echo -e "========================="
echo -e "Script By Lakmal Sandaru"

    return vless_config


def delete_v2ray_config(config_index):
    config_index -= 1
    with open('/usr/local/etc/xray/config.json') as json_file:  # /usr/local/etc/xray/config.json
        json_file = json.load(json_file)
    del json_file["inbounds"][0]["settings"]["clients"][config_index]
    with open('/usr/local/etc/xray/config.json', 'w') as json_write:
        json.dump(json_file, json_write)
    subprocess.run("sudo service xray restart", shell=True)


def list_all_v2ray_configs():
    with open('/usr/local/etc/xray/config.json') as json_file:  # /usr/local/etc/xray/config.json
        json_file = json.load(json_file)
    config_list = []
    uuid_index = 0
    for i in json_file["inbounds"][0]["settings"]["clients"]:
        uuid = json_file["inbounds"][0]["settings"]["clients"][uuid_index]["id"]
        config_list.append(f"vless://{uuid}@{public_ip}:443?security=tls&encryption=none&type=ws&sni=hora.pusa.vpn#Hora-Pusa-VPN")
        uuid_index += 1
    return config_list


def pannel():
    print(f"""

Welcome To Smart Life V2ray Manager.
1. Create New v2ray config.
2. Delete v2ray config.
3. List All v2ray configs.
4. Restart Server.
5. Exit""")
    command = int(input("> "))
    if command == 1:
        new_config = create_new_config()
        print(new_config)
    elif command == 2:
        config_index = int(input("Enter the config number to delete : "))
        delete_v2ray_config(config_index)
    elif command == 3:
        config_list = list_all_v2ray_configs()
        config_int = 1
        for config in config_list:
            print(f"""Config {config_int}
{config}
""")
            config_int += 1
    elif command == 4:
        subprocess.run("sudo reboot", shell=True)
    elif command == 5:
        exit()


while True:
    pannel()
