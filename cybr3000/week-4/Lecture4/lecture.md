# Lecture 4

# Frameworks
#### Cyber Kill Chain framework
1. Reconnaissance
2. Weaponization
3. Delivery
4. Exploitation
5. Installation
6. Command & Control
7. Action ob Objectives
#### Common Attack Pattern Enumeration and Classification (ATT&CK)
- A resource for identifying and understanding attacks
# Malware
### Advanced Persistent Threat (APT attacks)
##### Advanced 
- varies from theft of intellectual property or security and infrastructure related data to the physical disruption of infrastructure
##### Persistent 
- Social Engineering
- Physical emails
- drive-by-Downloads
##### Threats 
- infect target sophisticated malware with multiple propagation mechanisms and payloads
#### Drive-by-Downloads
- Exploits browser  vulnerabilities to download and install malware on the system when  the user view a web page controlled by the attacker
### Propagation
#### Virus Classifcation
##### By target
- Boot sector infector
	- infects mater boot record, spreads when system is booted from disk containing virus
- FIle infector
	- infects files that the operation system or shell considers to be executable
- Macro Virus
	- Infecs file with macro or scripting code 
##### by Concealment
- Encryption
	- create a random encryption key and encrypts the rest of itself
- Stealth virus
	- virus explicit designed to hide itself 
- polymorphic virus
	- a virus that mutates with every infection 
#### Computer Virus vs Worm
- Virus does not intentionally spread itself
- worms are programs that designed to copy itself from one computer to another over a network 
#### Worms
##### Scanning
- **Random** -  each compromised host probs random addresses in the ip address space
- **Hit-list** - compiles a long list of targets, each machine infected is provided a small amount of scanning period 
- **Topological** - find most hosts based on information on the current host
- **Local subnet** - infects behind a firewall that host 
#### Social Engineering - Spam E-mail, Trojans
- Trick into run/install malicious 
### Payload
#### System Corruption
##### Ransomware
- pay me money to get your shit back 
#### Attack Agent - Zombie, Bots
- Takes over another internet attached computer 
- a collection of bots for cooridnation
- DDOS
#### Stealthing - Backdoors, Rootkits
- hide presence 
##### Rootkits
- set of hidden programs
- hides of subverting mechanism to monitor and report processes 


### Counter Measures

### DoS attacks
#### Denial-of-service Attacks
- act of exhausting resources to impair assets
```slide-note
file: TOpic_05_Attacks1-Intro.pdf
page: 58
scale: 0.75
```

#### Flooding attacks
- aim is to overwhelm capacity 
- packets are discarded as capacity decreases
- identifiable unless spoofed 
##### Source Address Spoofing
- uses forged source addresses
#### Distributed DDos Attacks
- a botnet of compromised computer ddosing a asset
##### Application based
- Bombard web servers with traffic
- normally hit complex paths or path with high bandwidth
	- complex business logic
	- images 
#### Reflector and amplifier attacks
- using a computer to create a loop, primarily on public resources 



#### Defences against Dos Attacks 
- can't be prevented without cutting all traffic 







