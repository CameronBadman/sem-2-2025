# CYBR3000 Vulnerability Assessment Flashcards

#flashcards/cybr3000/vulnerability-assessment

## Basic Concepts

What is a Red Team?
?
A group of people authorized and organized to emulate a potential adversary's attack or exploitation capabilities against an enterprise's security posture. Also known as Cyber Red Team.

What is the difference between Red Teaming and VAPT?
?
VAPT (Vulnerability Assessment and Penetration Testing) is a focused approach that aims to identify and address specific vulnerabilities in IT infrastructure. Red Teaming takes a broader approach that simulates real-world attacks and tests an organization's people, processes, and technology.

What are the three main types of security assessments?
?
1. Vulnerability Assessment (Scanning) - finds vulnerabilities using automated processes
2. Penetration Testing - exploits vulnerabilities to demonstrate true impact  
3. IT Security Auditing - focuses on policies, procedures, and compliance through interviews and document reviews

What is the Cyber Kill Chain framework and who developed it?
?
Developed by Lockheed Martin as part of the Intelligence Driven Defense model. It identifies what adversaries must complete to achieve their objective through seven steps that enhance visibility into attacks and enrich understanding of adversary tactics, techniques, and procedures.

What are the seven steps of the Cyber Kill Chain?
?
1. Reconnaissance
2. Weaponization
3. Delivery
4. Exploitation
5. Installation
6. Command & Control (C2)
7. Actions on Objectives

What does MITRE ATT&CK stand for?::Adversarial Tactics Techniques and Common Knowledge

MITRE ATT&CK provides what key components?
?
Tactics (PRE-ATT&CK, Enterprise, Mobile, ICS), techniques with target systems, possible detection and mitigation methods, and mitigations for Enterprise, Mobile, and ICS.

What is reconnaissance in MITRE ATT&CK?
?
The adversary is trying to gather information they can use to plan future operations. It consists of techniques that involve adversaries actively or passively gathering information that can be used to support targeting, including details of the victim organization, infrastructure, or staff/personnel.

## Scanning Fundamentals

What is scanning/footprinting?
?
The technique of gathering information about computer systems and the entities they belong to. It's one of the pre-attack phases - tasks performed prior to doing the actual attack. It identifies services and operating systems to narrow the scope of vulnerability identification.

The two main categories of scanning are::1. Ping (ICMP scan) - Server scan and 2. TCP and UDP scans - Port scans

What protocol does ping use?::ICMP (Internet Control Message Protocol) ECHO_REQUEST datagram to elicit an ICMP ECHO_RESPONSE

What are the two types of OS detection methods?
?
1. Passive detection - analyzes existing network traffic (examples: Ettercap, p0f, PacketFence)
2. Active detection - sends specific probes to fingerprint systems (example: Nmap)

Name three passive OS detection tools::Ettercap (MITM tool), p0f (passive fingerprinter), PacketFence (passive OS fingerprinting)
<!--SR:!2025-09-14,1,230-->

## TCP/UDP Scanning

What are the main nmap TCP scan types?
?
1. TCP open scan (-sT): TCP connect scan - completes full 3-way handshake
2. TCP half open (-sS): TCP SYN scan - stealth scan that doesn't complete handshake
3. Stealth scans: NULL (-sN), FIN (-sF), XMAS (-sX)

TCP open scan vs TCP half open scan difference?
?
TCP open scan completes the full 3-way handshake (SYN → SYN+ACK → ACK), while TCP half open scan sends SYN, receives SYN+ACK, then sends RST instead of ACK. Half open requires root privileges but generates no session logs, making it stealthier.

TCP open scan advantages::Fast, requires no privileges
TCP open scan disadvantages::Easily detectable and blockable

What are the three stealth scan types?
?
1. NULL scan: Turns off all TCP flags (TCP flag header is 0)
2. FIN scan: Sets just the TCP FIN bit
3. XMAS scan: Sets FIN, PSH, and URG flags (lighting up like a Christmas tree)
All rely on closed ports responding with RST, while open ports give no response.

Why is XMAS scan called "XMAS"?
?
Because it sets the FIN, PSH, and URG flags, "lighting the packet up like a Christmas tree" with multiple flags enabled.

UDP scanning reliability issue?
?
UDP scan sends UDP packets to ports. Open ports typically give no response, closed ports return ICMP unreachable. It's unreliable because UDP packets can be lost during transmission by routers and/or firewalls.

UDP scan response interpretations?
?
- Any UDP response from target port: **open** (unusual)
- No response received: **open|filtered**
- ICMP port unreachable (type 3, code 3): **closed**  
- Other ICMP unreachable errors: **filtered**

Stealth scan (NULL, FIN, XMAS) response interpretations?
?
- No response received: **open|filtered**
- TCP RST packet: **closed**
- ICMP unreachable error (type 3, codes 1,2,3,9,10,13): **filtered**

What is fragmentation scanning?
?
Modifies TCP stealth scans (SYN, FIN, XMAS, NULL) to use tiny fragmented IP datagrams. Uses flags like -f or --mtu. Increases difficulty of scan detection but doesn't work on all OSes and may crash firewalls/sniffers.

## Well-Known Ports

TCP ports 20 and 21 services::Port 20: FTP Data, Port 21: FTP Control

TCP ports 22, 23, 25 services::Port 22: SSH, Port 23: TELNET, Port 25: SMTP

TCP ports 53, 67, 80 services::Port 53: DNS, Port 67: BOOTP, Port 80: HTTP

TCP ports 79 and 111 services::Port 79: Finger, Port 111: RPC (Remote Procedure Call)

What services run on TCP ports 7, 9, 11, 13?
?
- Port 7: Echo (echoes received datagram back to sender)
- Port 9: Discard (discards any datagram received)  
- Port 11: Users (Active users)
- Port 13: Daytime (returns date and time)

## Vulnerability Scanners

Vulnerability scanner architecture components?
?
1. User Interface
2. Scanning Engine  
3. Vulnerability Database
4. Scan Results
5. Report Generation

What are vulnerability scanners used for?
?
Tools that network administrators use to scan networks for vulnerabilities. They highlight known vulnerabilities and misconfigurations that leave networks at risk of cyberattacks or data breaches.

Three major vulnerability scanning tools::1. Tenable Nessus (commercial), 2. IBM Security QRadar (commercial), 3. OpenVAS (open source)

## Nessus

What scripting language does Nessus use?::NASL (Nessus Attack Scripting Language)

NASL allows what capabilities?
?
Designed specifically for security testing, making it easy to write scripts that check for vulnerabilities, misconfigurations, and compliance issues. Allows people to write their own scripts and plug-ins.

Nessus can discover what types of vulnerabilities?
?
Software flaws, missing patches, malware, denial-of-service vulnerabilities, default passwords, misconfiguration errors, and other potential security flaws.

How does Nessus rank vulnerabilities?
?
Each vulnerability is ranked with respect to risk as Low, Medium, or High. Results should be interpreted only in view of your own system, as the same vulnerability may not pose the same risk level for different organizations.

Nessus runs on which platforms?::Linux, Unix, and Windows

How does Nessus store vulnerability information?
?
Nessus doesn't use large databases of vulnerabilities. Instead, it uses NASL (Nessus Attack Scripting Language) and provides a plug-in interface with many free plug-ins available.

## OpenVAS  

What does OpenVAS stand for?::Open Vulnerability Assessment System

When was OpenVAS originally proposed?::Around 2005 by pentesters at Portcullis Computer Security

OpenVAS scripting language::NASL (Nessus Attack Scripting Language) - same as Nessus

## Vulnerability Standards

What does CWE stand for?::Common Weakness Enumeration

CWE purpose?
?
A formal list of common software and hardware weaknesses that can occur in architecture, design, code, or implementation and lead to exploitable security vulnerabilities. Its goal is to stop vulnerabilities at the source by educating developers.

Difference between weakness and vulnerability (CWE)?
?
Weaknesses are conditions that could contribute to vulnerabilities under certain circumstances. Weaknesses are errors that can lead to vulnerabilities. A weakness becomes a vulnerability when it can be exploited.

Examples of software weaknesses in CWE::Buffer overflows, format strings, structure and validity problems

What does CVE stand for?::Common Vulnerabilities and Exposures

CVE provides what?
?
A list of standardized names for vulnerabilities and other information security exposures. It's a community-wide effort that standardizes names for all publicly known vulnerabilities and security exposures.

Who maintains CVE?
?
MITRE Corporation maintains CVE and moderates Editorial Board discussions. The content is a collaborative effort of the CVE Editorial Board, which includes representatives from over 20 security-related organizations.

What does NVD stand for?::National Vulnerability Database

How does NVD relate to CVE?
?
NVD is a comprehensive cybersecurity vulnerability database that integrates all publicly available U.S. Government vulnerability resources. NVD is a superset of CVE - it's the CVE standard augmented with additional analysis, database, and fine-grained search engine.

What additional information does NVD provide beyond CVE?
?
Enhanced information including patch availability, severity scores, and an easier mechanism to search on a wide range of variables. It also provides references to industry resources.

What does CVSS stand for?::Common Vulnerability Scoring System

CVSS severity ratings?
?
- **Low**: CVSS score 0.0-3.9
- **Medium**: CVSS score 4.0-6.9
- **High**: CVSS score 7.0-10.0

What are the three CVSS v3.0 metric groups?
?
1. **Base Metric Group**: Exploitability metrics (Attack Vector, Attack Complexity, Privileges Required, User Interaction, Scope) and Impact metrics (Confidentiality, Integrity, Availability)
2. **Temporal Metric Group**: Exploit Code Maturity, Remediation Level, Report Confidence  
3. **Environmental Metric Group**: Modified Base Metrics, Confidentiality/Integrity/Availability Requirements

## Defense Mechanisms

Main types of fingerprinting defenses?
?
1. Software patch management
2. Detection (NIDS/NIPS - Network Intrusion Detection/Prevention Systems)
3. Blocking (Firewalls - though some probes can't be blocked)
4. Deception (IP personality changes, fake nodes/networks)
5. Moving Target Defense (MTD)

What is IP personality in deception defenses?
?
A technique that changes the TCP/IP stack signature to that of another OS in the nmap database, making the system appear to be running a different operating system to confuse attackers.

NIDS and NIPS stand for?::NIDS: Network Intrusion Detection System, NIPS: Network Intrusion Prevention System

## Practical Commands

Default nmap scan for privileged vs unprivileged users?
?
- **Privileged user**: -sS (TCP SYN scan) - the default stealth scan
- **Unprivileged user**: -sT (TCP connect scan) - full connection scan

Basic nmap target specification commands?
?
- Single IP: `nmap 192.168.1.1`
- Host: `nmap www.testnetwork.com` 
- Multiple IPs: `nmap 192.168.1.1-20`
- Subnet: `nmap 192.168.1.0/25`

Advanced nmap scanning options?
?
- OS detection: `nmap -A 10.1.0.2`
- Service version: `nmap -sV 192.16.1.1`
- Save XML results: `nmap -sV 192.16.1.1 -oX nmapresult.xml`

UDP scanning nmap examples?
?
- Basic UDP scan: `sudo nmap -sU -p 80 --max-scan-delay 10ms 10.0.2.4`
- Port range: `sudo nmap -sU -p 80-100 --max-scan-delay 300ms 10.0.2.4`
- With tuning: `nmap -sU -p <port_range> --max-retries 2 --max-scan-delay 20ms <target>`

Stealth and fragmentation scan examples?
?
- TCP SYN scan: `sudo nmap -sS 10.0.2.4`
- NULL scan: `sudo nmap -sN 10.0.2.4`
- FIN scan: `sudo nmap -sF 10.0.2.4`  
- XMAS scan: `sudo nmap -sX 10.0.2.4`
- Fragmentation: `sudo nmap -f <target>`
- Custom MTU: `sudo nmap --mtu 160 <target>`

Combined nmap command example::sudo nmap -sS -mtu 160 -p80 10.0.2.4 (SYN scan + MTU fragmentation + specific port)

## NASL Scripting Examples

Basic NASL script for detecting open Telnet port?
?
```nasl
if ( get_port_state(23) ) {
  security_warning(port:23, proto:"tcp", "Telnet service is running on this port.");
}
```

NASL script for detecting open HTTP port?
?
```nasl
include("http_func.inc");
port = get_http_port(default:80);
if (get_port_state(port)) {
  security_warning(port:port, proto:"tcp", "HTTP port is open.");
}
```

NASL script for detecting SMBv1 vulnerability?
?
```nasl
include("smb_func.inc");
port = 445;
if (!get_port_state(port)) exit(0);
# Check for SMBv1
if (smb1_is_enabled()) {
  security_warning(port:port, proto:"tcp", "SMBv1 is enabled. Vulnerable to attacks like WannaCry.");
}
```