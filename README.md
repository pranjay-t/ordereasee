# OrderEase - New Order Screen

## Overview
OrderEase is a Flutter-based application that allows users to place and manage their orders efficiently. This project focuses on implementing the **New Order Screen** with full localization support for **English (EN)** and **Hindi (HI)** using `flutter_localizations` and `.arb` files.

## Features
- **Multi-language Support**: Localized all user-facing strings for English and Hindi.
- **Real-time Order Summary**: Displays item name, quantity, price, selected address, and delivery date.
- **Delivery Address Selection**: Allows users to pick from saved addresses or add a new one.
- **Delivery Date Selection**: Users can specify their preferred delivery date.
- **Error Handling**: Displays appropriate messages when required fields are not selected.
- **State Management**: Utilizes `Provider` for managing order data, addresses, dates, and quantities.

## State Management Choice
This project uses **Provider** for state management due to its simplicity, efficiency, and ease of integration with Flutter’s widget tree. Provider ensures:
- **Efficient Data Handling**: Only updates necessary widgets when data changes.
- **Scoped State Management**: Keeps business logic separate from UI components.
- **Lightweight & Performant**: No unnecessary rebuilds, leading to a smoother user experience.

## Setup and Installation
### Prerequisites
- Flutter SDK installed
- Dart environment set up
- Dependencies installed via `pub get`

### Installation Steps
1. Clone the repository:
   ```sh
   git clone https://github.com/pranjay-t/ordereasee.git
   cd OrderEase
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the app:
   ```sh
   flutter run
   ```

## Localization Implementation
1. **Added Dependencies**
   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     flutter_localizations:
       sdk: flutter
     intl: any
   ```
2. **Created `.arb` Files**
   - `lib/l10n/app_en.arb`
   - `lib/l10n/app_hi.arb`
3. **Configured `l10n.yaml`**
4. **Integrated Localization in `main.dart`**
5. **Used Localized Strings in Widgets**

## Screenshots
![New Order Screen](assets/screenshots/)

## Future Enhancements
- Add more language support.
- Implement user authentication.
- Improve UI/UX.

## License
This project is licensed under the MIT License.

