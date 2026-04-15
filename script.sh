#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 example.com"
  exit 1
fi

DOMAIN=$1
OUTPUT="results.txt"

echo "[+] Downloading homepage..."
curl -s -L "https://www.$DOMAIN" -o homepage.html

echo "[+] Extracting subdomains..."
SUBDOMAINS=$(grep -oE "[a-zA-Z0-9._-]+\.${DOMAIN}" homepage.html | sort -u)

# Limit results to first 30 only
SUBDOMAINS=$(echo "$SUBDOMAINS" | head -n 30)

echo "[+] Resolving IPs..."

> temp.txt

for sub in $SUBDOMAINS
do
  IP=$(host $sub 2>/dev/null | grep "has address" | head -n 1 | awk '{print $4}')

  if [ ! -z "$IP" ]; then
    echo "$sub - $IP" >> temp.txt
  fi
done

# Remove duplicates
sort -u temp.txt > $OUTPUT
rm temp.txt

echo "[+] Done! Saved in $OUTPUT"
