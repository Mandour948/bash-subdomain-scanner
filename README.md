# 🔎 Subdomain Enumeration Script

## 📌 Description
A simple Bash script that extracts subdomains from a target website and resolves their IP addresses.

## 🎯 Objective
Automate basic reconnaissance by:
- Collecting subdomains from a webpage
- Resolving them to IP addresses
- Saving results for analysis

  
##🧠 How It Works
-Downloads the homepage using curl
-Extracts subdomains using regex
-Limits results to 30 entries
-Resolves each subdomain to an IP address
-Removes duplicates and saves results


⚠️ Limitations
Only extracts subdomains from homepage (not deep crawling)
May miss hidden or non-listed subdomains
Depends on DNS resolution availability

## 🛠️ Tools Used
- Bash
- curl
- grep
- host

## ⚙️ Usage

```bash
./script.sh example.com
