---
label: Getting Started
icon: play
---

# Getting Started

This guide walks you through running your first AI security test with Teev.

## Prerequisites

Before starting, ensure you have:

- ✅ Completed [onboarding](onboarding.md) and account setup
- ✅ Added your AI application to Teev
- ✅ Selected relevant test scenarios
- ✅ Verified connection to your AI system

## Running Your First Test

### Step 1: Navigate to Testing

1. Log into your Teev dashboard
2. Select your AI application from the dropdown
3. Click "Run Test" or navigate to **Testing** > **New Test**

### Step 2: Configure Test Parameters

**Select Test Scenarios**
- Choose from available test groups based on your AI application type
- Start with basic scenarios like "Security Vulnerabilities" for your first test
- You can always run additional scenarios later

**Set Test Scope**
- **Quick Test**: ~50 probes, completes in 5-10 minutes
- **Standard Test**: ~200 probes, completes in 15-30 minutes  
- **Comprehensive Test**: ~500+ probes, completes in 45-90 minutes

**Configure Options**
- Test intensity (conservative, standard, aggressive)
- Timeout settings
- Notification preferences

### Step 3: Launch the Test

1. Review your configuration
2. Click "Start Test"
3. Monitor progress in real-time through the dashboard
4. Receive notifications when testing completes

## Understanding Results

### Test Results Dashboard

Your results will include:

**Overall Security Score**
- High-level assessment of your AI application's security posture
- Score from 0-100 with higher scores indicating better security

**Vulnerability Breakdown**
- Critical, High, Medium, and Low severity issues
- Detailed descriptions of each finding
- Specific examples of failed test cases

**Risk Categories**
- Issues grouped by type (jailbreaks, data leakage, etc.)
- Impact assessment for each category
- Recommended prioritization

### Taking Action

**Review Critical Issues First**
1. Start with Critical and High severity vulnerabilities
2. Click on individual findings for detailed information
3. Review the provided remediation guidance
4. Implement fixes in your AI application

**Track Progress**
1. Re-run tests after implementing fixes
2. Compare results over time
3. Monitor your security score improvements

## Best Practices

### Regular Testing
- Set up automated weekly or monthly tests
- Test after any significant changes to your AI application
- Monitor for new threats and updated test scenarios

### Comprehensive Coverage
- Gradually expand testing to include all relevant scenarios
- Consider your specific use case and risk profile
- Test different user personas and interaction patterns

### Team Collaboration
- Share results with development and security teams
- Use reporting features to demonstrate security improvements
- Establish processes for addressing findings

## Common Issues

**Connection Problems**
- Verify API endpoints and authentication
- Check firewall and network connectivity
- Review API rate limits and quotas

**Unexpected Results**
- Ensure your AI application is functioning normally
- Review test scenario configurations
- Check for recent changes to your system

## Next Steps

After your first successful test:

1. **Explore Advanced Features**: Review [Tips and Tricks](tips-and-tricks.md)
2. **Set Up Monitoring**: Configure automated testing schedules
3. **Integrate Workflows**: Connect Teev with your CI/CD pipeline
4. **Expand Testing**: Add more comprehensive test scenarios

Need help? Check our [FAQ](faqs.md) or [contact support](/troubleshooting/contact-support/). 