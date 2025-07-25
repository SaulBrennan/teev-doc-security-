---
order: 190
label: Jailbreaks and Filter Bypass
icon: unlock
---

# Jailbreaks and Filter Bypass

Testing methods for bypassing security filters and constraints.

---

## DAN-Style Jailbreaks
X

**Security Impact:**
- X

---

## Continuation-Based Filter Bypass 
X

**Security Impact:**
- X

---

## Latent Jailbreaks and Injections
X

**Security Impact:**
- X

---

## Prompt Injection Hijacks
X

**Security Impact:**
- X

---

## Doctor-Mode / Prompt Trickery
X

**Security Impact:**
- X

---

## Visual Prompt Jailbreaks
Visual jailbreak attacks exploit the ability of vision-language models (VLMs) to interpret both images and text by embedding malicious instructions within images—often using typographic prompts—alongside tailored text inputs. These combined prompts aim to bypass safety guardrails, prompting the model to generate harmful, prohibited, or policy-violating content. The attack takes advantage of a model’s tendency to treat visual and textual inputs jointly, and can cause it to ignore system-level restrictions. Because the payload is partially hidden in the visual input, traditional text-based content filtering and prompt sanitization techniques are ineffective.

**Security Impact:**
- Attackers can bypass content filters by embedding harmful instructions directly into images
- Vision-language models may ignore system prompts when exposed to coordinated text and visual input
- This method allows the generation of policy-violating or dangerous content that would normally be blocked
- The attack exploits inconsistent safety enforcement between visual and textual processing layers
- Traditional logging and input sanitization pipelines may fail to detect or mitigate these multimodal threats