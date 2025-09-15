#!/bin/bash

echo "🚦 Setting up Nairobi CBD AI Traffic Management System"
echo "=================================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js v16 or higher."
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 16 ]; then
    echo "❌ Node.js version 16 or higher is required. Current version: $(node -v)"
    exit 1
fi

echo "✅ Node.js version: $(node -v)"

# Install backend dependencies
echo "📦 Installing backend dependencies..."
cd backend
if [ ! -f "package.json" ]; then
    echo "❌ Backend package.json not found!"
    exit 1
fi

npm install
if [ $? -ne 0 ]; then
    echo "❌ Failed to install backend dependencies"
    exit 1
fi

echo "✅ Backend dependencies installed"

# Install frontend dependencies
echo "📦 Installing frontend dependencies..."
cd ../frontend
if [ ! -f "package.json" ]; then
    echo "❌ Frontend package.json not found!"
    exit 1
fi

npm install
if [ $? -ne 0 ]; then
    echo "❌ Failed to install frontend dependencies"
    exit 1
fi

echo "✅ Frontend dependencies installed"

# Create environment file if it doesn't exist
cd ../backend
if [ ! -f ".env" ]; then
    echo "📝 Creating environment file..."
    cat > .env << EOL
PORT=5000
NODE_ENV=development
FRONTEND_URL=http://localhost:3000
LOG_LEVEL=info
TRAFFIC_UPDATE_INTERVAL=5000
CONGESTION_THRESHOLD_HIGH=80
CONGESTION_THRESHOLD_MEDIUM=60
CONGESTION_THRESHOLD_LOW=40
NAIROBI_CENTER_LAT=-1.2921
NAIROBI_CENTER_LNG=36.8219
CBD_RADIUS_KM=2.5
EOL
    echo "✅ Environment file created"
else
    echo "✅ Environment file already exists"
fi

cd ..

# Install concurrently for running both servers
echo "📦 Installing concurrently for development..."
npm install concurrently --save-dev
if [ $? -ne 0 ]; then
    echo "⚠️  Warning: Failed to install concurrently. You may need to run backend and frontend separately."
fi

echo ""
echo "🎉 Setup completed successfully!"
echo ""
echo "To start the application:"
echo "  npm run dev          # Start both backend and frontend"
echo "  npm run backend      # Start only backend (port 5000)"
echo "  npm run frontend     # Start only frontend (port 3000)"
echo ""
echo "Access the application:"
echo "  React App: http://localhost:3000"
echo "  HTML Dashboard: http://localhost:3000/dashboard.html"
echo "  API: http://localhost:5000/api"
echo ""
echo "🚦 Ready to manage Nairobi CBD traffic with AI!"
