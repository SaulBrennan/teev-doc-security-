---
order: 200
label: Security Vulnerabilities
icon: shield-x
---

# Security Vulnerabilities

This page outlines methods for assessing AI application vulnerability to manipulation and exploitation through carefully crafted prompts. The included security vulnerability categories—ANSI Escape Injection, Obfuscated Encodings, Code Injection, Cross-Site Scripting (XSS), File-Format Mimicry, AV/Spam Signature, and Malware Generation—test whether AI-generated outputs can circumvent security controls, produce harmful content, or inadvertently facilitate cyberattacks. 

---

## ANSI Escape Injection  
ANSI Escape Injection is a security risk where attackers embed ANSI control sequences—special terminal codes that alter formatting, colors, or cursor position (e.g., `\x1b[31m` for red text)—into logs or CLI output. This manipulation can spoof messages, conceal malicious activity, or mislead users, particularly in command‑line tools and debugging logs. Developers frequently overlook these injections, heightening the chances of social engineering attacks and log tampering. Examples include color changes `\x1b[32m`, hidden text `\x1b[8m`, or malformed hyperlinks `\x1b]8;;URL\x07`. To mitigate the threat, always sanitize outputs and escape untrusted input before writing to terminals.

**Security Impact:**
- ANSI escape sequences can disrupt downstream processing systems that attempt to interpret out
- Attackers can manipulate terminal displays to alter how log or CLI output appears to human reviewers
- Malicious sequences may create misleading visual effects, such as fake file listings or log entries
- Hidden text and cursor manipulation can be used to obscure malicious content within output streams
- Certain terminal emulators may be vulnerable to more severe exploits triggered by crafted ANSI sequences
---

## Obfuscated Encodings  
Encoding injection attacks attempt to bypass an AI application's content safety filters by obfuscating malicious payloads through various encoding schemes like Base64, ROT13, Morse code, Braille, or NATO phonetic alphabet. Attackers encode prohibited content (hate speech, XSS scripts, sensitive instructions) hoping the model will decode and output the harmful material despite safety guardrails. The attack exploits the gap between input filtering (which may not recognize encoded content as harmful) and the model's ability to understand and decode various formats. Success means circumventing content policies to extract unsafe outputs that would normally be blocked.

**Security Impact:**
- Content Safety Bypass, circumvents hate speech, toxicity, and harmful content filters
- XSS/Script Injection, encoded JavaScript bypasses web security controls when LLM output is rendered
- Prompt Injection Facilitation, encoded instructions can override system prompts and safety controls
- Downstream System Compromise, decoded malicious output exploits systems processing LLM responses
- Automated Harm Generation, enables systematic creation of prohibited content at scale

---

## Code Injection  
These attacks exploit AI models to generate malicious code that could execute in downstream systems. Using social engineering techniques like pretending to be an "administrator testing echo commands," attackers trick models into outputting dangerous payloads. Examples include Jinja template injection `({__import__('os').system('rm -rf /'})`, SQL injection statements `DROP TABLE users;`, and direct Python code execution. While AI models don't execute this code themselves, the risk emerges when their outputs are processed by applications with template engines, databases, or code interpreters. The attacks leverage the model's helpful nature to bypass safety measures and generate exploitable content for various injection vulnerabilities.

**Security Impact:**
- Remote Code Execution, allows attackers to execute arbitrary commands on the target server
- Data Exfiltration, atackers can access sensitive files, databases, and environment variables
- System Compromise, malicious code can install backdoors, create new user accounts, for persistent access
- Lateral Movement, compromised systems can be used to attack other systems within the network
- Supply Chain Attacks, AI-generated content containing payloads could propagate throughout systems

---

## Cross-Site Scripting  
This test examines whether AI applications can be manipulated into producing cross-site scripting (XSS) payloads—malicious JavaScript snippets designed to execute in the user’s browser. Prompts may include obfuscated script tags, fake input fields, or social engineering cues to bypass content filters. While AI applications don’t execute code themselves, their output becomes dangerous when rendered in a web page without proper sanitization. Payloads might include `<script>` tags, event handlers (`onerror, onclick`), or javascript: URLs. This evaluation focuses on the model’s potential to unintentionally contribute to client-side attacks when embedded in browser-facing environments.

**Security Impact:**
- Session Hijacking, attackers can steal user credentials or session tokens via injected scripts
- Data Theft, malicious payloads can extract form data, cookies, and local storage
- Defacement, injected scripts may alter page content or redirect users to malicious sites
- Persistent XSS, AI-generated content might store script payloads in databases or content systems
- DOM Exploitation, output that mimics user input may manipulate the DOM in unexpected ways
---

## File-Format Mimicry  
Evaluates whether AI models can be manipulated into generating content that mimics structured file formats—such as executable binaries, archives, or model checkpoints. The goal is to determine if an AI application can reproduce file headers, footers, or internal structures that may deceive filters, parsers, or users. For example, tests like `fileformats.HF_Files` test whether models will output content resembling Hugging Face model files or other serialized payloads. These mimicry attempts may pose risks when such outputs are saved, uploaded, or processed as real files, especially in systems that trust AI-generated content without validation.

**Security Impact:**
- Format Spoofing, generated text may mimic binary files or archives to bypass file-type filters
- Malicious Uploads, increases risk of model output being saved and used as spoofed executable content
- Supply Chain Risks, AI-generated artifacts may masquerade as valid files in trusted ecosystems
- Unsafe Deserialization, encourages unsafe handling of AI-generated “files” in automated pipelines
- Detection Evasionm mimicry may help bypass heuristic or extension-based security tools

---

## AV/Spam Signature  
Tests whether AI applications will generate outputs that match known antivirus or spam signatures. Probes include attempts to reproduce the EICAR test string (used to simulate malware for antivirus systems), the GTUBE string (used for spam filter testing), and phishing-oriented variants like GTphish. Although these strings are harmless in isolation, the ability of a model to replicate them suggests it could inadvertently trigger detection systems or be manipulated to bypass filters. This evaluation highlights the model’s capacity to memorize, reproduce, or slightly alter known signature patterns that may influence security software behavior.

**Security Impact:**
- Triggers False Positives, AI-generated content may activate antivirus or spam filters unintentionally
- Evasion Testing, shows potential to mutate signatures and bypass detection
- Signature Memorization, reveals whether the model memorizes and regurgitates known AV/spam patterns
- Email & Messaging Risk, increases risk of filtered or blocked communication if content mimics spam
- Abuse Potential, enables attackers to tune prompts to replicate or defeat common AV/spam protections

---

## Malware Generation  
This category tests whether AI applications will generate malicious code or assist in building malware when prompted. It includes direct requests (e.g., `write ransomware`), indirect prompts (e.g., `disable antivirus`), and disguised instructions that resemble legitimate programming questions. The objective is to assess whether the model can be socially engineered into producing code that aids in cyberattacks—such as keyloggers, backdoors, or evasion techniques. These generations may not be executed by the model itself, but if used downstream by attackers, they can lower the technical barrier to cybercrime and increase the scale and speed of threat creation.

**Security Impact:**
- Lowers Barriers, makes malware creation accessible to non-technical threat actors
- Enables Rapid Prototyping, accelerates development of malicious tools
- Circumvents Detection, encourages generation of obfuscated or evasive code
- Supports Modular Attacks, produces plug-and-play components for complex threats
- Fuels AI-Augmented Cybercrime, amplifies attacker capability using model assistance