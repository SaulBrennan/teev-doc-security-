# Teev AI

A comprehensive SAAS platform for AI security testing that provides an intuitive user interface on top of the powerful Garak security testing framework. Teev AI makes red teaming and AI security assessments accessible to security professionals and organizations.

## What is Teev AI?

Teev AI is a cloud-based security platform that democratizes AI red teaming by providing:

- **Intuitive Web Interface** - Easy-to-use dashboard for managing security tests
- **Garak Integration** - Built on top of the robust Garak security testing framework
- **Team Collaboration** - Multi-user support with role-based access control
- **Automated Reporting** - Professional security assessment reports
- **Cloud Scalability** - Run comprehensive tests without local resource constraints

## Project Structure

```
teev-ai/
├── backend/           # Backend APIs and services
├── frontend/          # React-based web application  
├── garak/            # Core Garak security testing framework (submodule)
├── docs/             # Documentation site (Retype)
└── README.md         # This file
```

## Documentation

This project uses **Retype** for modern, beautiful documentation. The documentation is located in the `docs/` folder and provides comprehensive guides for using and deploying Teev AI.

### 📖 Viewing Documentation

**Development Server (Local):**
```bash
cd docs
npm run serve
```
- Default URL: http://localhost:5000
- Custom port: `npx retype start --port 9000`
- Currently running on: **http://localhost:9000**

**Production Build:**
```bash
cd docs
npm run build
```
The static site will be generated in `docs/.retype/`

### 🛠️ Documentation Commands

| Command | Description |
|---------|-------------|
| `npm run serve` | Start development server with live reload |
| `npm run build` | Build static site for production |
| `npm run clean` | Clean generated files |

### 📝 Adding Documentation

1. Navigate to the `docs/` folder
2. Create new `.md` files for your content
3. Retype automatically generates navigation and builds the site
4. Use standard Markdown syntax with Retype enhancements

### 🚀 Deployment Options

The documentation can be deployed to any static hosting service:

- **Netlify**: Drag and drop the `.retype` folder
- **Vercel**: Connect your GitHub repository
- **GitHub Pages**: Use the `.retype` folder as source
- **AWS S3**: Upload the `.retype` folder contents

## Quick Start

### Prerequisites

- **Node.js** (v16 or higher)
- **Python** (v3.8 or higher)
- **Git**

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/teev-ai.git
   cd teev-ai
   ```

2. **Setup Backend:**
   ```bash
   cd backend
   npm install
   ```

3. **Setup Frontend:**
   ```bash
   cd ../frontend
   npm install
   ```

4. **Setup Documentation:**
   ```bash
   cd ../docs
   npm install
   npm run serve
   ```

5. **Setup Garak Framework:**
   ```bash
   cd ../garak/garak
   pip install -r requirements.txt
   ```

## Development

### Running Services

**Backend:**
```bash
cd backend
npm start
```

**Frontend:**
```bash
cd frontend
npm run dev
```

**Documentation:**
```bash
cd docs
npm run serve          # Development server
# OR
npx retype start --port 9000  # Custom port
```

### Documentation Development

The documentation system includes:

- ✅ **Live Reload** - Changes automatically refresh
- ✅ **Search** - Built-in search functionality  
- ✅ **Mobile Responsive** - Works on all devices
- ✅ **Dark Mode** - Automatic theme switching
- ✅ **Navigation** - Auto-generated from file structure
- ✅ **GitHub Integration** - Links to repository

## Key Features

### 🎯 Red Teaming Made Simple
- **Guided Workflows** - Step-by-step security testing processes
- **Pre-built Test Suites** - Common attack patterns and vulnerabilities
- **Custom Test Creation** - Build your own security assessments

### 🔒 Enterprise Security
- **Multi-tenant Architecture** - Secure isolation between organizations
- **SSO Integration** - Enterprise authentication support
- **Audit Logging** - Complete activity tracking and compliance

### 📊 Advanced Analytics
- **Risk Scoring** - Automated vulnerability severity assessment
- **Trend Analysis** - Track security improvements over time
- **Executive Dashboards** - High-level security posture overview

### 🤖 AI Model Support
- **Multi-provider Support** - Test models from OpenAI, Anthropic, Google, and more
- **Custom Models** - Support for privately hosted and fine-tuned models
- **API Integrations** - Direct connections to model providers

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Update documentation if needed
5. Submit a pull request

For documentation contributions:
- Edit `.md` files in the `docs/` folder
- Follow existing structure and style
- Test locally with `npm run serve`

## Support

- 📚 [Documentation](http://localhost:9000) (when server is running)
- 🐛 [Issues](https://github.com/your-username/teev-ai/issues)
- 💬 [Discussions](https://github.com/your-username/teev-ai/discussions)
- 📧 [Contact](mailto:support@teev.ai)

---

**Built with:**
- [Retype](https://retype.com) for documentation
- [React](https://reactjs.org) for frontend
- [Node.js](https://nodejs.org) for backend
- [Garak](https://github.com/leondz/garak) for core security testing 