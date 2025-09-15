# AI Traffic Management System

A comprehensive AI-powered traffic management system designed for smart city traffic optimisation. This system uses artificial intelligence to monitor, predict, and optimize traffic flow to reduce congestion and improve transportation efficiency, with a focus on Nairobi, Kenya's Central Business District (CBD).

## 🚦 Features

### Core Features
- **Real-time Traffic Monitoring**: Live monitoring of traffic patterns and network anomalies
- **AI Traffic Light Control**: Intelligent traffic light timing optimisation based on congestion levels
- **Route Optimisation**: AI-powered alternative route suggestions to avoid congested areas
- **Predictive Analytics**: Traffic congestion predictions with confidence levels
- **Interactive Dashboards**: Multiple dashboard options for different use cases
- **Simulation Mode**: Standalone operation with realistic mock data when the backend is unavailable

### Advanced Features
- **Real-time Notifications**: Instant alerts for traffic incidents and congestion warnings
- **Interactive Visualisations**: Charts, maps, and traffic light status displays
- **Anomaly Detection**: AI-powered detection of unusual traffic patterns
- **Historical Analytics**: Traffic pattern analysis over time
- **Mobile-Responsive**: Works seamlessly on desktop, tablet, and mobile devices
- **Smart Connection Handling**: Automatic fallback to simulation mode if the backend is unavailable

## 🛠️ Technology Stack

### Backend
- **Node.js** with **TypeScript**
- **Express.js** for REST API
- **Socket.IO** for real-time communication
- **Winston** for logging
- **Joi** for request validation
- **Helmet** for security

### Frontend
- **React** with **TypeScript**
- **Material-UI** for modern UI components
- **Redux Toolkit** for state management
- **Chart.js** for data visualization
- **Socket.IO Client** for real-time updates

### AI & Analytics
- **Machine Learning Algorithms** for traffic prediction
- **Congestion Analysis** using real-time data
- **Route Optimization** algorithms
- **Anomaly Detection** using statistical analysis

## 📍 Coverage Areas

The system is designed with Nairobi CBD as the primary focus area, covering key intersections:

- **Kenyatta Avenue & Moi Avenue** - Main CBD intersection
- **Harambee Avenue & Kenyatta Avenue** - Government district
- **Wabera Street & Moi Avenue** - Business district
- **Harambee Avenue & Parliament Road** - Parliament area
- **Wabera Street & Kimathi Street** - Shopping district

*Note: The system can be easily adapted for other cities and regions by updating location data and traffic patterns.*

## 🚀 Quick Start

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- Git

### Installation Options

#### Option 1: Automated Setup (Recommended)
```bash
# Windows
.\setup.ps1

# Linux/Mac
chmod +x setup.sh && ./setup.sh
```

#### Option 2: Manual Setup
```bash
# Clone the repository
git clone <repository-url>
cd network-traffic-analysis

# Install all dependencies
npm run install-all

# Create environment file
cd backend
cp .env.example .env
```

### Running the Application

#### Full Application (Backend + Frontend)
```bash
npm run dev
```

#### Individual Components
```bash
# Backend only
npm run backend

# Frontend only  
npm run frontend
```

### Access Points
- **React App**: http://localhost:3000
- **HTML Dashboard**: http://localhost:3000/dashboard.html
- **Test Dashboard**: Open `test-dashboard.html` in browser
- **API**: http://localhost:5000/api

### 🎯 **Quick Demo (No Setup Required)**
For immediate demonstration, simply open `test-dashboard.html` in any web browser. This standalone file includes:
- Realistic traffic simulation
- Interactive charts and visualisations
- AI traffic light control simulation
- Route optimisation suggestions
- No backend dependencies required

## 📊 Dashboard Options

### 1. Test Dashboard (`test-dashboard.html`) - **Recommended for Demo**
- **Standalone Operation**: Works without backend server
- **Realistic Simulation**: Mock data that mimics real traffic patterns
- **Interactive Charts**: Live traffic flow visualization
- **Traffic Light Status**: AI-controlled traffic light monitoring
- **Congestion Monitoring**: Real-time congestion level tracking
- **Instant Access**: Open in any web browser

### 2. Full Dashboard (`/dashboard.html`)
- **Live Traffic Statistics**: Total traffic, active connections, anomalies
- **Smart Connection**: Automatically falls back to simulation if backend unavailable
- **Interactive Charts**: Real-time traffic flow visualization
- **Traffic Light Status**: AI-controlled traffic light monitoring
- **Route Optimizations**: Alternative route suggestions
- **Traffic Predictions**: AI-powered congestion forecasting
- **Notification System**: Real-time alerts and warnings

### 3. React Application (`/`)
- **Comprehensive Analytics**: Detailed traffic analysis
- **Interactive Components**: Material-UI based interface
- **Real-time Updates**: Socket.IO powered live data
- **Responsive Design**: Mobile-friendly interface
- **Advanced Filtering**: Time range and location filters
- **Component-based Architecture**: Modular and extensible

## 🔧 API Endpoints

### Network Traffic
- `GET /api/network-traffic` - Get traffic data
- `GET /api/network-traffic/stats` - Get traffic statistics
- `GET /api/network-traffic/anomalies` - Get anomaly data

### Traffic Management
- `GET /api/traffic-management/traffic-lights` - Get traffic light status
- `GET /api/traffic-management/route-optimisations` - Get route suggestions
- `GET /api/traffic-management/predictions` - Get traffic predictions
- `GET /api/traffic-management/optimisation-summary` - Get optimisation summary

### WebSocket Events
- `trafficUpdate` - Real-time traffic data
- `statsUpdate` - Updated statistics
- `anomaliesUpdate` - New anomalies detected
- `trafficAlert` - Traffic alerts and warnings
- `congestionWarning` - Congestion level warnings
- `routeOptimization` - New route optimisations

## 🎯 Use Cases

### For Traffic Management Authorities
- Monitor real-time traffic conditions across Nairobi CBD
- Receive instant alerts for congestion and incidents
- Access AI-powered traffic light optimisation
- Get predictive insights for traffic planning

### For Commuters
- View current traffic conditions
- Receive alternative route suggestions
- Access real-time congestion updates
- Plan optimal travel routes

### For Urban Planners
- Analyse traffic patterns and trends
- Access historical traffic data
- Get insights for infrastructure planning
- Monitor the effectiveness of traffic management strategies

## 🔮 AI Features

### Traffic Light Optimisation
- **Dynamic Timing**: Real-time adjustment based on congestion levels
- **Priority Control**: High-priority intersections get preferential treatment
- **Coordinated Management**: Synchronized timing across multiple intersections
- **Peak Hour Adaptation**: Automatic adjustment for rush hour patterns

### Route Optimisation
- **Real-time Calculation**: Instant alternative route suggestions
- **Congestion Avoidance**: Routes that bypass high-traffic areas
- **Time Savings**: Routes optimised for minimum travel time
- **Multi-modal Integration**: Support for different transportation modes

### Predictive Analytics
- **Congestion Forecasting**: Predict traffic levels 15 minutes to 2 hours ahead
- **Pattern Recognition**: Identify recurring traffic patterns
- **Incident Prediction**: Early warning system for potential problems
- **Seasonal Analysis**: Long-term trend analysis and planning

### Anomaly Detection
- **Pattern Deviation**: Detect unusual traffic behavior
- **Security Monitoring**: Identify potential security threats
- **Performance Issues**: Monitor system performance degradation
- **Real-time Alerts**: Instant notifications for critical issues

### Smart Simulation Mode
- **Realistic Mock Data**: Comprehensive simulation of traffic scenarios
- **Independent Operation**: Works without backend dependencies
- **Educational Value**: Demonstrates AI traffic management concepts
- **Testing Platform**: Safe environment for algorithm testing

## 🛡️ Security Features

- **Helmet.js** for security headers
- **CORS** configuration for cross-origin requests
- **Input validation** using Joi
- **Error handling** with proper logging
- **Rate limiting** for API endpoints

## 📱 Mobile Support

The dashboard is fully responsive and optimised for:
- **Desktop**: Full-featured dashboard experience
- **Tablet**: Optimised layout for touch interfaces
- **Mobile**: Streamlined interface for on-the-go monitoring

## 🔄 Real-time Updates

The system provides real-time updates through:
- **WebSocket connections** for instant data updates (when backend is available)
- **Smart fallback** to simulation mode when the backend is unavailable
- **Automatic refresh** every 3-5 seconds
- **Live notifications** for critical events
- **Real-time charts** and visualizations
- **Mock data simulation** for standalone operation

## 🚧 Roadmap

### Phase 1 (Current) ✅
- ✅ Basic traffic monitoring
- ✅ AI traffic light control
- ✅ Route optimisation
- ✅ Real-time dashboard
- ✅ Simulation mode for standalone operation
- ✅ Smart connection handling
- ✅ Multiple dashboard options

### Phase 2 (Planned)
- 🔄 Integration with real traffic cameras
- 🔄 Mobile app development
- 🔄 Enhanced machine learning models
- 🔄 Integration with public transport APIs
- 🔄 Weather data integration
- 🔄 Emergency response system integration

### Phase 3 (Future)
- 📋 IoT sensor integration
- 📋 Advanced predictive modelling
- 📋 Multi-city expansion
- 📋 Real-time traffic camera feeds
- 📋 Integration with traffic enforcement systems
- 📋 Advanced analytics and reporting

## 🤝 Contributing

We welcome contributions! Please see our contributing guidelines:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆕 Recent Updates & Improvements

### Latest Version Features
- **✅ Fixed Connection Issues**: Smart fallback to simulation mode when backend is unavailable
- **✅ Mock Data Simulation**: Realistic traffic data simulation for standalone operation
- **✅ Multiple Dashboard Options**: Test dashboard, full dashboard, and React app
- **✅ Improved User Experience**: Streamlined interface and better error handling
- **✅ Enhanced AI Features**: More sophisticated traffic prediction algorithms
- **✅ Better Documentation**: Comprehensive setup guides and troubleshooting

### Key Improvements
- **Smart Connection Handling**: No more "failed to connect" errors
- **Standalone Operation**: Test dashboard works without any backend
- **Realistic Simulation**: Mock data that accurately represents traffic scenarios
- **Responsive Design**: Optimized for all device sizes
- **Error-Free Operation**: Robust error handling and fallback mechanisms

## 🎯 Getting Started Guide

### For Immediate Demo
1. **Open `test-dashboard.html`** in any web browser
2. **Watch the simulation** - traffic data updates every 3 seconds
3. **Explore features** - traffic lights, charts, congestion levels
4. **No installation required** - works offline!

### For Full Development Setup
1. **Run setup script**: `.\setup.ps1` (Windows) or `./setup.sh` (Linux/Mac)
2. **Start the application**: `npm run dev`
3. **Access dashboards**:
   - React App: http://localhost:3000
   - HTML Dashboard: http://localhost:3000/dashboard.html
   - Test Dashboard: Open `test-dashboard.html`

### Troubleshooting
- **Connection errors**: The system automatically falls back to simulation mode
- **Port conflicts**: Change ports in backend/.env file
- **Dependencies issues**: Run `npm run install-all` to reinstall all packages

## 📞 Support

For support and questions:
- Create an issue in the repository
- Check the troubleshooting section above
- Review the documentation

## 🙏 Acknowledgments

- Open source community contributors
- Traffic management research community
- Chart.js and Socket.IO teams
- Material-UI and React communities

---

**Built with ❤️ for Smart Cities**

*Empowering urban traffic management through AI-driven solutions*
