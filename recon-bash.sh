#!/bin/bash
# Basic Recon Script

echo "[*] Starting Recon..."
read -p "Enter domain: " domain

echo "[*] Running whois..."
whois $domain > whois.txt

echo "[*] Running DNS enumeration..."
dig $domain any > dns.txt

echo "[*] Running Nmap scan..."
nmap -sC -sV -T4 -oN nmap.txt $domain

echo "[*] Recon Complete. Outputs saved to whois.txt, dns.txt, nmap.txt"
