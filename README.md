# 🛡️ AiraScan: Next-Gen Cyber Recon & Security Audit Tool

<p align="center">
  <img src="https://img.shields.io/badge/Language-AiraLang%20v1.4.0-brightgreen.svg" alt="AiraLang">
  <img src="https://img.shields.io/badge/Category-Cyber%20Security%20%26%20Recon-blue.svg" alt="Recon">
  <img src="https://img.shields.io/badge/Platform-Termux%20%7C%20Linux-orange.svg" alt="Linux">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="MIT License">
  <img src="https://img.shields.io/badge/Architect-Adam%20Eehan-purple.svg" alt="Adam Eehan">
</p>

---

## 🌟 Overview

**AiraScan** is a lightning-fast, multi-vector cybersecurity reconnaissance and web posture audit CLI tool built natively with **[AiraLang](https://github.com/adameehan/airalang)** (v1.4.0 Aira Cyber & AI Edition).

Designed for ethical hackers, penetration testers, bug bounty hunters, and security researchers operating on **Termux** and **Linux** environments.

---

## ⚡ Key Features

1. 🌐 **DNS & Host Resolution**: Rapidly maps domains to public IP addresses and performs network host validation.
2. 🚀 **Multi-Threaded Port Scanner**: Concurrently inspects critical networking and database ports (HTTP, HTTPS, SSH, FTP, MySQL, SMTP, etc.).
3. 🔒 **HTTP Security Header Audit**: Evaluates the target web server's defensive posture, grading header configurations (`A` to `F`) and flagging missing headers like:
   - `Content-Security-Policy (CSP)`
   - `Strict-Transport-Security (HSTS)`
   - `X-Frame-Options`
   - `X-Content-Type-Options`
   - `Referrer-Policy`
4. 🛰️ **Passive Subdomain Discovery**: Enumerates live subdomains leveraging Certificate Transparency (CT) logs without sending invasive traffic.
5. 📦 **Standalone Binary Support**: Can be compiled into a direct executable binary (`./airascan`) via the AiraLang native compiler.

---

## 🖥️ Terminal Demo Preview

```text
    ___    _            ____                  
   /   |  (_)________ _/ ___/_________ _____  
  / /| | / / ___/ __ `/\__ \/ ___/ __ `/ __ \ 
 / ___ |/ / /  / /_/ /___/ / /__/ /_/ / / / / 
/_/  |_/_/_/   \__,_//____/\___/\__,_/_/ /_/  
===============================================================
[*] High-Speed Cyber Recon & Security Posture Audit Engine
[*] Language : AiraLang v1.4.0 (Native Cyber Engine)
[*] Architect: Adam Eehan (Founder & CEO, Aira Group of Tech)
===============================================================

[?] Enter Target Domain / IP: google.com
[*] Initiating Recon Scan against: google.com
---------------------------------------------------------------
[1/4] Resolving Network Host & DNS...
      [+] Target Host : google.com
      [+] IP Address  : 192.178.134.113

[2/4] Scanning Common Network Ports & Services...
      [+] Discovered 2 Open Port(s):
          • Port 80 [HTTP] -> OPEN
          • Port 443 [HTTPS] -> OPEN

[3/4] Auditing Web Security Headers (CSP, HSTS, etc.)...
      [+] Web Server     : gws
      [+] Security Grade : [F]
      [+] Active Headers (1)  : X-Frame-Options
      [-] Missing Headers (5) : Strict-Transport-Security, Content-Security-Policy...

[4/4] Discovering Public Subdomains...
      [+] Found 189 Subdomain(s):
          • accounts.google.com
          • adwords.google.com
          ... and 187 more subdomains

===============================================================
[✓] Scan Complete for: google.com
👑 AiraScan © 2026 Adam Eehan — Aira Group of Technology
```

---

## 📥 Installation & Usage

### Method 1: Direct Execution with AiraLang

```bash
# Clone the repository
git clone https://github.com/adameehanaira/Airalang-First-project.git
cd Airalang-First-project

# Run directly using AiraLang engine
airalang airascan.aira
```

### Method 2: Compile to Standalone Binary

```bash
# Compile using AiraLang native compiler
airalang build airascan.aira -o airascan

# Run the binary directly
./airascan
```

### Method 3: System-Wide Install (Termux / Linux)

```bash
chmod +x install.sh
./install.sh

# Now execute from anywhere:
airascan
```

---

## 📜 Technical Architecture

`AiraScan` demonstrates the raw speed and developer ergonomics of **AiraLang**:

```aira
import "sec";

# 1. IP & DNS Resolution
let ip = sec.resolve("example.com");

# 2. Multi-threaded Port Scan
let open_ports = sec.scan_ports("example.com", [80, 443, 22], 10, 1.0);

# 3. HTTP Header Security Audit
let audit = sec.audit_headers("https://example.com");

# 4. Certificate Log Subdomain Discovery
let subs = sec.subdomains("example.com");
```

---

## 👑 Credits & Author

- **Architect & Author:** **Adam Eehan**  
  *Founder & CEO, Aira Group of Technology*
- **AI Co-Pilot & Engine Assistant:** **Aira** (Engine v3.6)
- **Programming Language:** [AiraLang](https://github.com/adameehan/airalang)

---

## ⚖️ License

Distributed under the **MIT License**. See `LICENSE` for more information.
