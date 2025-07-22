# Getting Started with Teev AI

This guide will help you deploy and configure the Teev AI platform for AI security testing in your environment.

## Prerequisites

Before you begin, ensure you have the following:

### System Requirements
- **Node.js** (v16 or higher)
- **Python** (v3.8 or higher)
- **Git**
- **Database** (PostgreSQL recommended for production)
- **Redis** (for session management and caching)

### Cloud Infrastructure (Optional)
- **AWS/Azure/GCP** account for cloud deployment
- **Docker** and **Kubernetes** for containerized deployment
- **SSL certificates** for HTTPS deployment

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/teev-ai.git
cd teev-ai
```

### 2. Backend Setup

Navigate to the backend directory and install dependencies:

```bash
cd backend
npm install

# Copy and configure environment variables
cp .env.example .env
# Edit .env with your database and API configurations
```

### 3. Frontend Setup

Navigate to the frontend directory and install dependencies:

```bash
cd ../frontend
npm install

# Copy and configure environment variables
cp .env.example .env
# Edit .env with your API endpoints
```

### 4. Garak Framework Setup

The core Garak security testing framework is included as a submodule:

```bash
cd ../garak/garak
pip install -r requirements.txt

# Optional: Set up virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

### 5. Database Setup

Initialize your database:

```bash
cd ../../backend
npm run db:migrate
npm run db:seed  # Optional: Add sample data
```

## Development Environment

### Running All Services

For local development, start all services:

```bash
# Terminal 1: Backend API
cd backend
npm run dev

# Terminal 2: Frontend Application
cd frontend
npm run dev

# Terminal 3: Documentation Server
cd docs
npm run serve
```

### Environment Configuration

#### Backend (.env)
```env
NODE_ENV=development
PORT=3001
DATABASE_URL=postgresql://user:password@localhost:5432/teevai
REDIS_URL=redis://localhost:6379
JWT_SECRET=your-secure-jwt-secret
GARAK_PATH=../garak/garak
```

#### Frontend (.env)
```env
REACT_APP_API_URL=http://localhost:3001
REACT_APP_ENV=development
```

## Production Deployment

### Docker Deployment

Build and run using Docker Compose:

```bash
# Build all services
docker-compose build

# Start production environment
docker-compose up -d

# Check service status
docker-compose ps
```

### Cloud Deployment

#### AWS ECS/Fargate
```bash
# Build and push images
npm run deploy:aws

# Update ECS services
aws ecs update-service --cluster teev-ai --service teev-ai-backend
aws ecs update-service --cluster teev-ai --service teev-ai-frontend
```

#### Kubernetes
```bash
# Apply configurations
kubectl apply -f k8s/

# Check deployment status
kubectl get pods -n teev-ai
```

## Initial Configuration

### 1. Admin Account Setup

After deployment, create your first admin account:

```bash
cd backend
npm run create-admin -- --email admin@yourcompany.com --password securepassword
```

### 2. Organization Setup

1. Log in to the Teev AI dashboard
2. Navigate to **Settings** > **Organization**
3. Configure your organization details
4. Set up user roles and permissions

### 3. Model Integration

Connect your AI models for testing:

1. Go to **Settings** > **Models**
2. Add API credentials for your model providers:
   - OpenAI
   - Anthropic
   - Google Cloud AI
   - Azure OpenAI
   - Custom endpoints

### 4. Security Configuration

Configure security settings:

1. **SSL/TLS** - Ensure HTTPS is enabled
2. **Authentication** - Set up SSO if required
3. **API Keys** - Generate secure API keys for integrations
4. **Backup** - Configure automated database backups

## First Security Test

### 1. Create a Test Suite

1. Navigate to **Tests** > **New Test Suite**
2. Select your target AI model
3. Choose from pre-built attack patterns or create custom tests
4. Configure test parameters

### 2. Run Your First Test

1. Click **Start Test** to begin the security assessment
2. Monitor progress in real-time
3. Review findings as they appear

### 3. Generate Report

1. Once testing is complete, go to **Reports**
2. Select your test results
3. Generate a professional security assessment report
4. Share with stakeholders or export as PDF

## Next Steps

- [User Guide](user-guide.md) - Comprehensive platform usage
- [API Reference](api-reference.md) - Automate testing with APIs
- [Administrator Guide](admin-guide.md) - Platform management
- [Security Best Practices](security.md) - Secure deployment guidelines

## Need Help?

If you encounter any issues:

1. Check the [Troubleshooting Guide](troubleshooting.md)
2. Search existing [GitHub Issues](https://github.com/your-username/teev-ai/issues)
3. Contact support at [support@teev.ai](mailto:support@teev.ai)
4. Join our [Community Discord](https://discord.gg/teev-ai)

## Enterprise Support

For enterprise deployments and custom requirements:

- 📧 **Sales**: [sales@teev.ai](mailto:sales@teev.ai)
- 🎯 **Professional Services**: [services@teev.ai](mailto:services@teev.ai)
- 🔒 **Security Questions**: [security@teev.ai](mailto:security@teev.ai) 