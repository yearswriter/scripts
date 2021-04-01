#!/bin/bash
## user variabels
SUBNET="10.8.0"
MASK="255.255.255.0"
BASE_NAME="client"
ipp=/etc/openvpn/ipp.txt
easyrsa=/etc/openvpn/easy-rsa
ccd=/etc/openvpn/ccd
vars=$easyrsa/vars
## generating consequential certificates and static ip's
hex_index=$(cat "$easyrsa/keys/serial")
index=$((16#$hex_index))
ip="$SUBNET.$index"
name="{$BASE_NAME}_$index"
sed -i "s|^export KEY_NAME=.*$|export KEY_NAME=$name|g" $vars
sed -i "s|^export KEY_CN=.*$|export KEY_CN=$name|g" $vars
echo "$name,$ip" >> $ipp
cd $easyrsa
source $vars
./build-key --batch $name
echo "ifconfig-push $ip $MASK" > "$ccd/$name"
sudo systemctl restart openvpn@server