---
icon: plug
order: 500
---

# API & Integrations

## 🔗 REST API

Programmatic access to all Teev AI functionality:

```bash
# Start a security scan
curl -X POST https://api.teev.ai/v1/scans \
  -H "Authorization: Bearer $TEEV_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model_id": "your-model-id",
    "scan_type": "comprehensive",
    "test_categories": ["prompt_injection", "toxicity"]
  }'

# Get scan results
curl https://api.teev.ai/v1/scans/{scan_id}/results \
  -H "Authorization: Bearer $TEEV_API_KEY"
```

## CI/CD Integration

Integrate security testing into your development pipeline:

```yaml
# GitHub Actions example
name: AI Security Testing
on: [push, pull_request]

jobs:
  security-scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Run Teev AI Security Scan
        uses: teev-ai/security-action@v1
        with:
          api-key: ${{ secrets.TEEV_API_KEY }}
          model-config: './ai-models.yml'
          fail-on: 'high,critical'
```

## Popular Integrations

- **Slack**: Real-time vulnerability notifications
- **Jira**: Automatic ticket creation for findings
- **PagerDuty**: Critical alert escalation
- **DataDog**: Security metrics monitoring
- **Splunk**: Log aggregation and analysis 