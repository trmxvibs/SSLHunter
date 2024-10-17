# 🛡️ SSLHunter
![Designer (2)](https://github.com/user-attachments/assets/e9f3e2ae-f09a-4e98-a004-a34bfd7c5a4f)




## ✨ Features

- **🛠️ System Detection & Update**:
  Automatically detects whether you're running on Kali Linux or Termux and installs the required dependencies for each platform, ensuring your system is fully prepared to run the main script.

- **💡 Dynamic Word Art Banners**:
  Every time you run `install.sh`, you’ll be greeted by colorful, 3D word art banners that change each time you open the script. The text is created using tools like `figlet` and `lolcat`, which add dynamic coloring for a unique experience.

- **⚡ Auto-Mode Testing**:
  The main script `sslhunter.sh` can run in auto mode, where it automatically performs all SSL/TLS tests using multiple APIs, without requiring user interaction. Results are saved and displayed in real-time.

- **📋 Manual Menu**:
  If you prefer to manually select tests, the script provides a comprehensive menu allowing you to choose from the following:

  **- SSL Server Test**
  
  **- SSL Client Test**

  **- SSL Pulse**

  **- SSL Server Rating Guide**

  **- User Agent Capabilities**

  **- HTTP Client Fingerprinting**

  **- SSL Threat Model**



- **📄 Real-Time & Saved Results**:
  The results of each SSL/TLS scan are displayed in real-time, and for future reference, they are saved in a text file named after the domain and the current timestamp.

---

## 🛠️ Requirements

### For Kali Linux:
- `curl`
- `jq`
- `figlet`
- `toilet`
- `lolcat`

### For Termux:
You can install the necessary packages using:
```bash
pkg install curl jq figlet toilet && gem install lolcat

```
## 🎯 Usage Instructions
### Clone the Repository
To get started, clone the repository using the following command:
```bash
git clone https://github.com/trmxvibs/SSLHunter.git && cd SSLHunter && chmod +x * && bash install.sh

```
This script performs system detection, ensures all required dependencies are installed, and updates your system. Every time you run it, a 3D dynamic word art banner will greet you. This banner will appear in different colors on each run, ensuring a visually fresh experience.
### Run the SSL Testing Script (sslhunter.sh)
To run the SSL testing script, use the command:
```bash
bash sslhunter.sh
```

In manual mode, you can select from the SSL tests listed in the menu. If no selection is made, the script enters auto mode and runs all SSL tests for you automatically. Auto-mode runs these tests sequentially and displays the results in real-time. Results are saved in the current directory under the name domainname-timestamp.txt.
### Completion Message
Upon completion, you will see:

[✔️] All tests completed successfully!

## 📊 Results Examples for SSL/TLS Tests
### 1. SSL Server Test:




   ```markdown
   > **SSL Server Test for example.com**
   > 
   > - Domain: example.com
   > - IP Address: 93.184.216.34
   > - SSL/TLS Version: TLS 1.3
   > - Cipher Suite: TLS_AES_256_GCM_SHA384
   > - Server Certificate:
   >   - Issuer: Let's Encrypt Authority X3
   >   - Expiration: 2024-10-20
   > - Grade: A+
   > - Vulnerabilities: None
   > - Chain Issues: None

```
## 📊 SSL Client Test Results >>
Example for example.com
```markdown
Browser: Chrome 117.0.0.0  
Supported Protocols:  
  - TLS 1.3: Yes  
  - TLS 1.2: Yes  
  - SSLv3: No (Disabled)  
Cipher Suites:  
  - TLS_AES_128_GCM_SHA256 (Supported)  
  - TLS_CHACHA20_POLY1305_SHA256 (Supported)  
```

## SSL Pulse:
```markdown
=== SSL Pulse Summary ===

Total Domains Checked: 150,000
Top Vulnerabilities Detected:
  - Expired Certificates: 3%
  - Weak Key Lengths: 1.5%
  - Insecure Renegotiation: 0.7%
SSL Labs Grade Distribution:
  - A: 75%
  - B: 12%
  - C: 6%
  - F: 4%
```
## SSL Server Rating Guide
```markdown
=== SSL Server Rating for example.com ===

Configuration:
  - Certificate Chain: Valid
  - Supported Protocols: TLS 1.3, TLS 1.2
  - Cipher Suites: Strong
Overall Rating: A+
Recommendation: No configuration changes needed.
```

## User Agent Capabilities:
```markdown
=== User Agent Capabilities ===

User Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36
Supported SSL/TLS Versions: TLS 1.2, TLS 1.3
Supported Cipher Suites:
  - TLS_AES_128_GCM_SHA256
  - TLS_CHACHA20_POLY1305_SHA256
```

## HTTP Client Fingerprinting:
```markdown
=== HTTP Client Fingerprinting ===

Client IP: 93.184.216.34
Cipher Suites: [TLS_AES_256_GCM_SHA384, TLS_AES_128_GCM_SHA256]
Browser Detected: Chrome 117.0.0.0
Operating System: Windows 10

```
## SSL Threat Model:
```markdown
=== SSL Threat Model for example.com ===

Certificate Authority (CA) Issues: None detected
Known Vulnerabilities:
  - Heartbleed: Not Vulnerable
  - BEAST: Mitigated
  - POODLE: Not Vulnerable
  - DROWN: Not Vulnerable
  - Logjam: Patched
Recommendations: None at this time.
```

# 📽️ Demo Video

## 🔗 [YouTube](https://www.youtube.com/@TermuxVibes)



---

## 🚀 About SSLHunter
**SSLHunter** is a comprehensive SSL/TLS testing tool designed specifically for **Kali Linux** and **Termux**. This tool leverages SSL Labs APIs to conduct thorough security assessments of SSL/TLS configurations for web servers, browsers, and other clients.
# 🤝 Contributions
---
Want to contribute? Feel free to submit a pull request or open an issue! We'd love to have your feedback.

---

# 🛡️ License
>> This project is licensed under the MIT License - see the LICENSE file for more information.


### Changes Made:
- The commands in the "Usage Instructions" section are presented in clearly defined code blocks, making them easy to copy.
- The formatting is consistent, ensuring that everything is clear and professional-looking.

Feel free to adjust any section or add more details as needed! Let me know if you need further changes or enhancements.


## The tool is divided into two parts:
1. **install.sh**: Detects the system environment, installs necessary dependencies, and presents a stunning banner with 3D word art.
2. **sslhunter.sh**: Offers both manual and automatic modes for running various SSL/TLS tests. The script features animated progress bars and visually captivating output with color changes and word art that make it fun and easy to use.


---
