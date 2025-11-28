#! /bin/bash

url=$1

if [ ! $1 ];then
	echo "[ERROR] Please include a starting domain to enumerate"
	exit -1
fi

if [ ! -d "enum_$url" ];then 
	mkdir enum_$url
fi

if [ ! -d "enum_$url/recon" ];then
	mkdir enum_$url/recon
fi

echo "[+] assetfinder - subdomain recon step..."
assetfinder $url >> enum_$url/recon/subdomains.txt

cat enum_$url/recon/subdomains.txt | grep $url >> enum_$url/final.txt

