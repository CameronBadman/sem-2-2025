# CYBR3000 Vulnerability Assessment - Focused Flashcards

#flashcards/cybr3000/vulnerability-assessment

## Acronyms (6 cards)

What does CWE stand for?::Common Weakness Enumeration
<!--SR:!2025-09-15,1,228-->

What does CVE stand for?::Common Vulnerabilities and Exposures
<!--SR:!2025-09-15,1,228-->

What does NVD stand for?::National Vulnerability Database
<!--SR:!2025-09-15,1,228-->

What does CVSS stand for?::Common Vulnerability Scoring System
<!--SR:!2025-09-15,1,228-->

What does NASL stand for?::Nessus Attack Scripting Language

What does MITRE ATT&CK stand for?::Adversarial Tactics Techniques and Common Knowledge
<!--SR:!2025-09-15,1,228-->

## Scanning Techniques (8 cards)

TCP open scan flag and characteristic::Flag: -sT, Completes full 3-way handshake, easily detectable

TCP half-open scan flag and characteristic::Flag: -sS, Sends SYN→SYN+ACK→RST, stealthier but needs root

Three TCP stealth scan flags::NULL (-sN), FIN (-sF), XMAS (-sX)
<!--SR:!2025-09-15,1,228-->

XMAS scan flag combination::Sets FIN, PSH, and URG flags
<!--SR:!2025-09-16,2,248-->

UDP scan flag and why unreliable?::Flag: -sU, Unreliable because UDP packets can be lost by routers/firewalls
<!--SR:!2025-09-15,1,228-->

Fragmentation scan flags::-f (default) or --mtu <size> (custom fragment size)

What does fragmentation scanning do?::Uses tiny fragmented IP packets to evade detection systems
<!--SR:!2025-09-15,1,228-->

Default nmap scan for privileged vs unprivileged users?::Privileged: -sS (SYN scan), Unprivileged: -sT (connect scan)
<!--SR:!2025-09-15,1,228-->

## Key Ports (3 cards)

Ports 21, 22, 23, 25 services::FTP Control, SSH, TELNET, SMTP

Ports 53, 80, 443 services::DNS, HTTP, HTTPS

FTP data and control ports::Data: 20, Control: 21

## Standards (6 cards)

CVSS severity score ranges?
?
Low: 0.0-3.9, Medium: 4.0-6.9, High: 7.0-10.0

CVE vs NVD relationship?::NVD is superset of CVE - adds analysis, database, and search capabilities
<!--SR:!2025-09-15,1,228-->

Who maintains CVE?::MITRE Corporation
<!--SR:!2025-09-15,1,228-->

CWE vs CVE difference?::CWE = weaknesses (can lead to vulnerabilities), CVE = actual vulnerabilities

What does Nessus use for vulnerability detection?::NASL scripts and plug-in interface

OpenVAS scripting language::NASL (same as Nessus)
<!--SR:!2025-09-15,1,228-->

## Defenses (3 cards)

Five main fingerprinting defense types?
?
1. Patch management, 2. Detection (NIDS/NIPS), 3. Blocking (Firewalls), 4. Deception, 5. Moving Target Defense

What is IP personality?::Changes TCP/IP stack signature to appear as different OS

NIDS vs NIPS full names::Network Intrusion Detection System vs Network Intrusion Prevention System