# Lecture 2
# Red Teaming Vs Blue Teaming 
### Red Team
- a group of people that with permission simulation a adversary's attack
### Blue Team
- responsible for defending assets
## VAPT vs Red Teaming 
### Vulnerability Assessment and Penetration Testing (VAPT)
- focused to identify and address vulnerabilities
- involves combination of scans, pen testing, and manual testing to identify vulnerabilities
### Red Teaming
- Broader approach simulating real world attacks and tests security posture missed by traditional assessments
# Vulnerability assessment
### Types of Security
#### Scanning 
- automated process that searches for known vulnerabilities 
- scans host network
- to identify vulnerability
#### Penetration Testing
- exploits vulnerabilities 
- demonstrates impact of compromise 
#### Security auditing
- reviewing documents and interviewing 
- Focuses on policies and procedures
- compliance
- Identification of risks
### Cyber Kill Chain framework
```slide-note
file: Topic_03_Vulnerability.pdf
page:7
scale: 0.6
```
### MITRE's ATT&CK framework
- Adversarial Tactics
#### Tactics
- PRE-ATT&CK, Enterprise, Mobile, ICS
- Recon, 
# Scanning
- Computer Systems and the entities they belong to 
- pre-attack tasks
##  Vulnerability Scanning
###### IP/Port Scanner
- nmap
##### Venerability Scanners
- Nessus
- OpenVAS
##### Nslookup
- querying DNS to obtain name or IP address mappings
#### Foot printing

#### Ping scan
- test host is reachable across a network 
#### OS detection
- Passive vs Active detection
- Passive tools
	- Ettercap: Man in the middle Network Tool:
		- Man-in-the-middle; DNS spoofing; Credentials; DoS attacks
	- p0f Scalable Passive OS fingerprinter: 
		- analyze struct of a TCP/IP packet to determine operation system
	- PacketFence:
		- Passive OS Fingerprinting TOP;
- Active tools
	- Nmap
#### UCP/TCP Scan
- UDP scan: -sU
	- Requires root priveges
- TCP scan:
	- TCP open scan: -sT (TCP connect scan)
	- Stealth scans
		- TCP half open

# Scanning tools: Nessus, OpenVAS

# Defences