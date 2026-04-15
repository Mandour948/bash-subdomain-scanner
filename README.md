# 🔎 Subdomain Enumeration Script

## 📌 Description
A simple Bash script that extracts subdomains from a target website and resolves their IP addresses.

---

## 🎯 Objective
Automate basic reconnaissance by:
- Collecting subdomains from a webpage  
- Resolving them to IP addresses  
- Saving results for analysis  

---

## 🧠 How It Works
- Downloads the homepage using curl  
- Extracts subdomains using regex  
- Limits results to 30 entries  
- Resolves each subdomain to an IP address  
- Removes duplicates and saves results  
<img width="267" height="107" alt="Screenshot" src="https://github.com/user-attachments/assets/08f072be-b268-459f-ae66-0a1a82e18c41" />

---

## 🛠️ Tools Used
- Bash  
- curl  
- grep  
- host  

---

## ⚙️ Usage

```bash
./script.sh example.com
