#! /bin/bash

url=$1

if [ ! -d "enum_$url" ];then mkdir enum_$url fi
if [ ! -d "enum_$url/recon" ];then mkdir enum_$url/recon fi

echo "[+] assetfinder - subdomain recon step..."
assetfinder $url >> enum_$url/recon/subdomains.txt

cat enum_$url/recon/assets.txt | grep $url >> enum_$url/final.txt

