# Nairobi CBD AI Traffic Management System Setup Script
Write-Host "🚦 Setting up Nairobi CBD AI Traffic Management System" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# Check if Node.js is installed
try {
    $nodeVersion = node -v
    Write-Host "✅ Node.js version: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Node.js is not installed. Please install Node.js v16 or higher." -ForegroundColor Red
    exit 1
}

# Check Node.js version
$version = [int]($nodeVersion -replace 'v(\d+)\..*', '$1')
if ($version -lt 16) {
    Write-Host "❌ Node.js version 16 or higher is required. Current version: $nodeVersion" -ForegroundColor Red
    exit 1
}

# Install backend dependencies
Write-Host "📦 Installing backend dependencies..." -ForegroundColor Yellow
Set-Location backend
if (-not (Test-Path "package.json")) {
    Write-Host "❌ Backend package.json not found!" -ForegroundColor Red
    exit 1
}

npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to install backend dependencies" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Backend dependencies installed" -ForegroundColor Green

# Install frontend dependencies
Write-Host "📦 Installing frontend dependencies..." -ForegroundColor Yellow
Set-Location ../frontend
if (-not (Test-Path "package.json")) {
    Write-Host "❌ Frontend package.json not found!" -ForegroundColor Red
    exit 1
}

npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to install frontend dependencies" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Frontend dependencies installed" -ForegroundColor Green

# Create environment file if it doesn't exist
Set-Location ../backend
if (-not (Test-Path ".env")) {
    Write-Host "📝 Creating environment file..." -ForegroundColor Yellow
    @"
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
"@ | Out-File -FilePath ".env" -Encoding UTF8
    Write-Host "✅ Environment file created" -ForegroundColor Green
} else {
    Write-Host "✅ Environment file already exists" -ForegroundColor Green
}

Set-Location ..

# Install concurrently for running both servers
Write-Host "📦 Installing concurrently for development..." -ForegroundColor Yellow
npm install concurrently --save-dev
if ($LASTEXITCODE -ne 0) {
    Write-Host "⚠️  Warning: Failed to install concurrently. You may need to run backend and frontend separately." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "🎉 Setup completed successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "To start the application:" -ForegroundColor Cyan
Write-Host "  npm run dev          # Start both backend and frontend" -ForegroundColor White
Write-Host "  npm run backend      # Start only backend (port 5000)" -ForegroundColor White
Write-Host "  npm run frontend     # Start only frontend (port 3000)" -ForegroundColor White
Write-Host ""
Write-Host "Access the application:" -ForegroundColor Cyan
Write-Host "  React App: http://localhost:3000" -ForegroundColor White
Write-Host "  HTML Dashboard: http://localhost:3000/dashboard.html" -ForegroundColor White
Write-Host "  API: http://localhost:5000/api" -ForegroundColor White
Write-Host ""
Write-Host "🚦 Ready to manage Nairobi CBD traffic with AI!" -ForegroundColor Green
