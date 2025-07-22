---
icon: settings
order: 800
---

# Platform Setup

## 🔧 Connecting Models

Teev AI supports all major LLM providers and deployment methods:

### **Cloud API Models**
- **OpenAI**: GPT-4, GPT-3.5, GPT-4 Turbo
- **Anthropic**: Claude 3, Claude 2, Claude Instant
- **Google**: Gemini Pro, PaLM 2
- **Cohere**: Command, Command Light
- **AWS Bedrock**: Models via AWS integration
- **Azure OpenAI**: Enterprise OpenAI deployments

### **Self-Hosted Models**
- **Hugging Face**: Any transformers-compatible model
- **vLLM**: High-performance inference servers
- **TensorRT-LLM**: NVIDIA optimized deployments
- **llama.cpp**: Local CPU/GPU inference
- **Custom REST APIs**: Connect any HTTP-based model endpoint

### **Enterprise Deployments**
- **Private Cloud**: VPC/on-premises deployments
- **Multi-region**: Global model testing infrastructure
- **SSO Integration**: SAML/OIDC authentication
- **API Management**: Rate limiting and cost controls

## Configuration Options

```yaml
# Example model configuration
model:
  name: "production-gpt4"
  type: "openai"
  api_key: "${OPENAI_API_KEY}"
  model_name: "gpt-4-0125-preview"
  temperature: 0.7
  max_tokens: 1024
  
security_profile:
  risk_tolerance: "high"  # low, medium, high
  test_categories: ["all"] # or specific categories
  compliance_standards: ["soc2", "iso27001"]
``` 