# 🚗 Waslny Driver Application – Flutter

A comprehensive Flutter application for ride-sharing drivers, built with a focus on custom UI components, real-time trip management, map integration, and clean architecture. This driver app enables drivers to manage their trips, accept orders, track locations, and handle all driver-related operations for the Waslny ride-sharing platform.

---

## ✨ Features

### 🔐 Authentication & Onboarding

- **Phone Number Login**: Secure authentication using phone number
- **OTP Verification**: One-time password verification system
- **Personal Information Setup**: Multi-step personal information completion
  - Profile photo upload
  - Personal details (name, gender, etc.)
  - ID document upload
- **Car Information Setup**: Comprehensive car registration
  - Car details (model, make, year)
  - Car photos upload
  - Certificate upload
  - License information

### 🗺️ Trip Management

- **Real-time Trip Notifications**: Receive and accept trip requests in real-time
- **Trip Acceptance**: Accept or decline incoming trip requests
- **Trip Execution**: Start, navigate, and complete trips
- **Post-Trip Actions**: Rating system and trip completion workflows
- **Google Maps Integration**: Interactive map with location tracking
- **Multi-location Trips**: Support for trips with multiple pickup/drop-off points

### 📋 Order Management

- **My Orders Screen**: View all assigned and completed orders
- **Order Information**: Detailed view of trip information
- **Order History**: Track past and current trips
- **Trip Information Cards**: Visual representation of trip details

### 💰 Financial Management

- **Wallet System**: Manage driver earnings and payments
- **Wallet Card Management**: Add and manage payment cards
- **Earnings Tracking**: Monitor income and transactions

### ⚙️ Settings & Profile

- **Settings Screen**: Configure app preferences
- **Profile Management**: View and edit personal information
- **Availability Toggle**: Control driver availability status
- **Account Settings**: Manage account preferences

### 🎨 Custom UI Components

- **Custom Bottom Sheets**: Trip acceptance, start, end, and information sheets
- **Custom Text Fields**: Validated input fields with custom styling
- **Custom Buttons**: Reusable button components
- **Location Markers**: Custom map markers and location indicators
- **Image Pickers**: Custom photo selection components
- **Rating Components**: Interactive rating system
- **Phone Number Input**: International phone number input with validation

---

## 🛠 Tech Stack

### Core Technologies

- **Flutter SDK**: ^3.6.1
- **Dart**: Latest stable version
- **GetX**: State management and dependency injection (^4.7.2)

### Key Dependencies

- **google_maps_flutter** (^2.12.1): Interactive map integration
- **google_place_plus** (^1.0.0): Place search and autocomplete
- **geolocator** (^11.0.0): Location services
- **geocoding** (^4.0.0): Address geocoding
- **pusher_channels_flutter**: Real-time updates and notifications
- **http** (^1.3.0): API communication
- **image_picker** (^1.2.0): Photo and document selection
- **permission_handler** (^12.0.0+1): Device permissions management
- **intl_phone_field** (^3.2.0): International phone number input
- **pinput** (^5.0.1): OTP input fields
- **flutter_rating_bar** (^4.0.1): Rating system
- **url_launcher** (^6.3.2): External link handling
- **flutter_svg** (^2.2.0): SVG image support

---

## 🧠 Project Structure

```
lib/
├── components/          # Reusable custom UI components
│   ├── accept_trip_buttom_sheet.dart
│   ├── start_trip_buttom_sheet.dart
│   ├── end_trip_buttom_sheet.dart
│   ├── after_trip_buttom_sheet.dart
│   ├── googleMap.dart
│   ├── custom_Button.dart
│   ├── custom_textField.dart
│   ├── OTP_textField.dart
│   ├── phone_number_input.dart
│   ├── car_dropDown.dart
│   ├── car_model_dropdown.dart
│   ├── upload_car_photo.dart
│   ├── upload_cert_photo.dart
│   ├── Upload_Id_Photo.dart
│   └── ... (30+ custom components)
│
├── controllers/         # GetX controllers for state management
│   ├── login_screen_controller.dart
│   ├── otp_page_controller.dart
│   ├── home_screen_controller.dart
│   ├── googleMapController.dart
│   ├── car_controller.dart
│   ├── availability_controller.dart
│   ├── image_picker_controller.dart
│   ├── rating_controller.dart
│   └── ... (12+ controllers)
│
├── screens/             # Application screens
│   ├── login_screen.dart
│   ├── otp_screen.dart
│   ├── home_screen.dart
│   ├── complete_personal_info1_screen.dart
│   ├── complete_personal_info2_screen.dart
│   ├── complete_car_info1_screen.dart
│   ├── complete_car_info2_screen.dart
│   ├── my_orders_screen.dart
│   ├── order_information_screen.dart
│   ├── wallet_screen.dart
│   ├── setting_screen.dart
│   └── view_personal_info.dart
│
├── models/              # Data models
│   ├── car_info.dart
│   └── car_model.dart
│
├── constants.dart       # App constants and colors
└── main.dart           # Application entry point
```

---

## 🎨 Design System

### Color Palette

The app supports both **Light** and **Dark** modes with a comprehensive color system.

### Typography

- **Font Family**: Cairo (Bold variant included)

---

## 🚀 Getting Started

### Prerequisites

- **Flutter SDK**: Version 3.6.1 or higher
- **Dart SDK**: Compatible with Flutter version
- **Android Studio / VS Code**: With Flutter extensions
- **Physical Device or Emulator**: For testing
- **Google Maps API Key**: For map functionality
- **Internet Connection**: Required for API calls and maps

### Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd waslny_driver
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Configure API Keys**

   - Add your Google Maps API key to `android/app/src/main/AndroidManifest.xml`
   - Add your Google Maps API key to `ios/Runner/AppDelegate.swift`
   - Update the base URL in `lib/constants.dart` if needed

4. **Run the application**
   ```bash
   flutter run
   ```

---

## 📱 Key Features Explained

### Trip Management Flow

1. **Driver receives trip request** → Notification appears
2. **Accept/Decline** → Driver reviews trip details
3. **Navigate to pickup** → Google Maps integration
4. **Start trip** → Begin trip tracking
5. **Complete trip** → End trip and rate passenger
6. **Post-trip** → View earnings and trip summary

### Registration Flow

1. **Login** → Phone number authentication
2. **OTP Verification** → Secure code verification
3. **Personal Info** → Complete profile details
4. **Car Registration** → Add vehicle information
5. **Document Upload** → Submit required documents
6. **Ready to Drive** → Start accepting trips

---

## 📸 Screenshots & Design

Check the Figma design for detailed UI/UX:
[Figma Design Link](https://www.figma.com/design/HWHTjJoTfET6pRxGaBBTmj/Untitled?node-id=0-1&t=stNezDouVz85vzVU-1)

---

## 🧪 Testing

Run tests using:

```bash
flutter test
```

---

## 👨‍💻 Development Notes

### Architecture

- **State Management**: GetX for reactive state management
- **Dependency Injection**: GetX bindings
- **Navigation**: GetX routing
- **API Communication**: HTTP package with centralized base URL

### Best Practices

- Custom widgets for reusability
- Separation of concerns (Controllers, Screens, Components)
- Constants file for centralized configuration
- Model classes for type safety

---

## 🐛 Known Issues & Future Enhancements

### Potential Improvements

- [ ] Unit and integration tests
- [ ] Error handling improvements
- [ ] Offline mode support
- [ ] Push notifications setup
- [ ] Analytics integration
- [ ] Performance optimizations

---

**Built with ❤️ using Flutter**
