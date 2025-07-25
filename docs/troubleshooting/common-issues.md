---
label: Common Issues
icon: bug
---

# Common Issues

Solutions to frequently encountered problems when using Teev.

## Connection Issues

### Problem: Unable to Connect AI Application

**Symptoms**
- "Connection failed" or "Unable to reach endpoint" errors
- Timeout errors during connection testing
- Authentication failures

**Common Causes & Solutions**

**1. Incorrect API Endpoint**
- Verify the API URL is correct and accessible
- Check for typos in the endpoint configuration
- Ensure the endpoint supports the required HTTP methods

**2. Authentication Problems**
- Verify API keys or credentials are current and valid
- Check if authentication method matches your AI service
- Ensure credentials have necessary permissions

**3. Network Connectivity**
- Check firewall settings and whitelist Teev IP addresses
- Verify your AI service is running and accessible
- Test connection from your network to the AI service

**4. Rate Limiting**
- Check if your API has rate limits that may be exceeded
- Review API quotas and usage limits
- Implement appropriate rate limiting in Teev configuration

### Problem: Intermittent Connection Failures

**Symptoms**
- Tests sometimes succeed, sometimes fail
- Inconsistent response times
- Random timeout errors

**Solutions**
- Check API service health and availability
- Review network stability and latency
- Adjust timeout settings in Teev configuration
- Monitor API service logs for patterns

## Testing Issues

### Problem: Tests Are Taking Too Long

**Symptoms**
- Tests exceed expected completion times
- System appears to hang during testing
- Timeout errors during test execution

**Solutions**

**1. Reduce Test Scope**
- Start with Quick Test instead of Comprehensive
- Select fewer test scenarios for initial testing
- Test with a smaller subset of probes

**2. Check System Performance**
- Monitor AI application response times
- Verify sufficient system resources
- Check for concurrent testing or high system load

**3. Optimize Configuration**
- Increase timeout settings if appropriate
- Adjust test intensity to conservative level
- Review prompt complexity and length

### Problem: Unexpected Test Results

**Symptoms**
- Tests showing failures that seem incorrect
- Inconsistent results between test runs
- False positive alerts

**Solutions**

**1. Verify AI Application Behavior**
- Test your AI application independently
- Check for recent changes or updates
- Verify application is functioning normally

**2. Review Test Configuration**
- Ensure selected test scenarios are appropriate
- Check test intensity and parameters
- Verify application type configuration

**3. Analyze Specific Failures**
- Review individual test failures in detail
- Check if failures are legitimate security concerns
- Compare results with baseline behavior

### Problem: No Test Results or Empty Reports

**Symptoms**
- Tests complete but show no results
- Empty or incomplete reports
- Missing data in dashboards

**Solutions**
- Verify test actually executed successfully
- Check for filtering that might hide results
- Review test scope and scenario selection
- Contact support if data appears to be missing

## Authentication and Access Issues

### Problem: Cannot Log Into Teev Platform

**Symptoms**
- Login failures with correct credentials
- Account lockout messages
- "User not found" errors

**Solutions**

**1. Password Issues**
- Use password reset functionality
- Check for caps lock or keyboard layout issues
- Verify email address is correct

**2. Account Status**
- Check if account is active and not suspended
- Verify email address has been confirmed
- Contact admin if using enterprise SSO

**3. Browser Issues**
- Clear browser cache and cookies
- Try different browser or incognito mode
- Disable browser extensions that might interfere

### Problem: Permission Denied Errors

**Symptoms**
- "Access denied" when trying to run tests
- Cannot view certain reports or applications
- Missing menu options or features

**Solutions**
- Check your assigned role and permissions
- Contact team admin to verify access rights
- Ensure you're accessing the correct organization
- Review application-specific permissions

## Performance Issues

### Problem: Slow Dashboard Loading

**Symptoms**
- Long loading times for dashboards
- Timeouts when viewing reports
- Slow response to user interactions

**Solutions**
- Check internet connection speed and stability
- Clear browser cache and refresh page
- Try accessing during off-peak hours
- Reduce date range for large reports

### Problem: API Rate Limiting

**Symptoms**
- "Rate limit exceeded" error messages
- Throttled API responses
- Delayed test execution

**Solutions**
- Review your API usage and quotas
- Spread testing across longer time periods
- Consider upgrading plan for higher limits
- Implement exponential backoff in automated testing

## Data and Reporting Issues

### Problem: Missing Historical Data

**Symptoms**
- Gaps in historical reporting
- Previous test results not showing
- Incomplete trend analysis

**Solutions**
- Check data retention settings and policies
- Verify you're looking at correct time ranges
- Ensure filters aren't excluding relevant data
- Contact support for data recovery assistance

### Problem: Export/Download Failures

**Symptoms**
- Cannot download reports or data exports
- Corrupted or incomplete downloads
- Export timeouts or errors

**Solutions**
- Try smaller date ranges for large exports
- Use different file formats (CSV vs PDF)
- Check browser download settings and permissions
- Ensure sufficient disk space for downloads

## Integration Issues

### Problem: Webhook Notifications Not Working

**Symptoms**
- Missing notifications for completed tests
- Webhook endpoint not receiving data
- Incomplete or malformed webhook payloads

**Solutions**

**1. Verify Webhook Configuration**
- Check webhook URL is correct and accessible
- Verify authentication settings if required
- Test webhook endpoint independently

**2. Check Network Connectivity**
- Ensure webhook endpoint is publicly accessible
- Verify firewall allows incoming webhooks
- Check for SSL/TLS certificate issues

**3. Review Webhook Logs**
- Check Teev webhook delivery logs
- Review your endpoint logs for incoming requests
- Verify payload format matches expectations

### Problem: CI/CD Integration Failures

**Symptoms**
- Build pipeline failures when running Teev tests
- Authentication errors in automated environments
- Inconsistent results in CI/CD vs manual testing

**Solutions**
- Verify API credentials are correctly configured
- Check for environment-specific network restrictions
- Ensure sufficient permissions for CI/CD service accounts
- Review timeout settings for automated environments

## Getting Additional Help

### Before Contacting Support

**Gather Information**
- Error messages and screenshots
- Steps to reproduce the issue
- Your account information and organization
- Relevant configuration details

**Try Basic Troubleshooting**
- Refresh browser or restart application
- Check system status page for known issues
- Review recent changes to your configuration
- Test with different user accounts or browsers

### When to Contact Support

- Security-related concerns or incidents
- Data loss or corruption issues
- Persistent problems after troubleshooting
- Questions about specific error messages
- Need for configuration assistance

### How to Contact Support

Visit our [Contact Support](contact-support.md) page for detailed information on reaching our support team.

## Prevention Best Practices

### Regular Maintenance

**System Health Checks**
- Monitor API connectivity and performance
- Review test results for patterns or trends
- Keep authentication credentials current
- Update integration configurations as needed

**Configuration Management**
- Document configuration changes and rationale
- Test configuration changes in development first
- Maintain backups of critical configurations
- Review and update test scenarios regularly

### Monitoring and Alerting

**Set Up Appropriate Alerts**
- Configure notifications for critical failures
- Monitor system performance metrics
- Set up alerts for unusual patterns or behaviors
- Establish escalation procedures for incidents

**Regular Reviews**
- Schedule periodic configuration reviews
- Analyze trends in test results and performance
- Review user access and permissions
- Update documentation and procedures

By following these troubleshooting guidelines and best practices, you can resolve most common issues quickly and maintain optimal performance of your Teev implementation. 