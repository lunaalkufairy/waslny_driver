# 🚗 Waslny Driver App - Flutter

A Flutter application for ride-sharing drivers. This app lets drivers manage trips, accept orders, track locations, and handle all driver operations for the Waslny platform.

## ✨ Features

- **Login & Registration**: Phone number login with OTP verification, personal info setup, and car registration
- **Trip Management**: Accept trip requests, navigate to pickups, start and complete trips
- **Order Management**: View all assigned and completed orders
- **Wallet**: Manage earnings and payment cards
- **Settings**: Profile management and app preferences
- **Maps**: Google Maps integration for navigation and location tracking

## 🛠 Tech Stack & Mian Dependencies

- Flutter SDK 3.6.1+
- GetX for state management
- Google Maps for location services
- Real-time updates with Pusher
- `google_maps_flutter` - Maps integration
- `geolocator` - Location services
- `pusher_channels_flutter` - Real-time updates
- `http` - API calls
- `image_picker` - Photo selection
- `get` - State management and routing

## 📁 Project Structure

```
lib/
├── components/     # Reusable UI components (buttons, text fields, bottom sheets, etc.)
├── controllers/    # GetX controllers for state management
├── screens/        # App screens (login, home, orders, settings, etc.)
├── models/         # Data models
├── constants.dart  # App constants
└── main.dart       # Entry point
```

## 🚀 Getting Started

### Requirements

- Flutter SDK 3.6.1 or higher
- Android Studio or VS Code with Flutter extension
- Google Maps API key
- Physical device or emulator for testing

### Setup

1. Clone the repository

   ```bash
   git clone <repository-url>
   cd waslny_driver
   ```

2. Install dependencies

   ```bash
   flutter pub get
   ```

3. Add Google Maps API key

   - Android: Add to `android/app/src/main/AndroidManifest.xml`
   - iOS: Add to `ios/Runner/AppDelegate.swift`
   - Update base URL in `lib/constants.dart` if needed

4. Run the app
   ```bash
   flutter run
   ```

## 🪄 Design

### 📸 Screenshots:

Figma design: [View Design](https://www.figma.com/design/HWHTjJoTfET6pRxGaBBTmj/Waslny?node-id=337-1255&p=f&t=edB9geqJBebuFSyy-0)

### 🎥 App Demo:

coming soon!

## 📊 Testing

Run tests with:

```bash
flutter test
```

## 📝 Notes

- Uses GetX for state management and routing
- Custom widgets for reusable components
- Controllers handle business logic
- Constants file for app-wide configuration

Built with Flutter😊.
