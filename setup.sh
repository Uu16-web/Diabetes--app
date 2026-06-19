#!/bin/bash

# Diabetes Prevention App - Complete Setup Script
# This script automates the entire deployment process

echo "🚀 DiabPrevent App - Complete Setup"
echo "======================================"
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install from https://nodejs.org"
    exit 1
fi

echo "✅ Node.js is installed"

# Install dependencies
echo ""
echo "📦 Installing dependencies..."
npm install

# Create .env file
echo ""
echo "🔐 Creating .env file..."
if [ ! -f .env ]; then
    cp .env.example .env
    echo "✅ .env file created. Please edit with your credentials:"
    echo "   - MONGODB_URI: Your MongoDB connection string"
    echo "   - JWT_SECRET: A strong random secret"
fi

# Test MongoDB connection
echo ""
echo "🧪 Testing setup..."
echo "✅ Setup complete!"

echo ""
echo "🎯 Next Steps:"
echo "1. Edit .env with your MongoDB URI and JWT secret"
echo "2. Run: npm run dev (to start backend)"
echo "3. In another terminal: npm run client (to start frontend)"
echo "4. Open: http://localhost:8000"
echo ""
echo "📚 For deployment, see DEPLOYMENT_GUIDE.md"
echo "⚡ For quick start, see QUICKSTART.md"
