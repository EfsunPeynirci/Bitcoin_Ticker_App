# 🤑 Coin Ticker

## 🌟 Overview
A Flutter application that fetches and displays live cryptocurrency prices for **Bitcoin (BTC)**, **Ethereum (ETH)**, and **Litecoin (LTC)**. Users can choose from a variety of fiat currencies, and the app dynamically updates the exchange rates using [CoinAPI](https://www.coinapi.io/).

---

## 🛠️ Technologies Used
- **Flutter**: Framework for UI development.
- **Dart**: Programming language.
- **http**: For making REST API calls.
- **Platform**: To differentiate between Android and iOS platforms for custom UI rendering.

---

## Screenshots
### Default Currency: USD

![bitcointicker_euro](https://github.com/user-attachments/assets/e624b961-2c11-4bc7-a98f-bbc813aea87f)

### Currency Selection

![bitcoinTicker_AUD](https://github.com/user-attachments/assets/e12c0321-0c33-487e-a44e-1e69a077c8ba)

### Updated Rates: AUD

![bitcoinTicker_AUD_1](https://github.com/user-attachments/assets/5679a8fb-83dd-4498-bbcd-e07c88a7695d)

---

## Video

https://user-images.githubusercontent.com/100719856/227813739-b0565d3c-9036-42da-8806-1d193e6abcbe.mp4

---

## 🚀 Features

### 🌟 Live Cryptocurrency Prices
- Fetches the latest exchange rates for BTC, ETH, and LTC.
- Displays real-time data for user-selected fiat currencies, including USD, EUR, AUD, and more.

### 🎮 Currency Selection
- **Platform-specific UI**:
  - **Android**: Dropdown menu using `DropdownButton`.
  - **iOS**: Smooth scrolling picker using `CupertinoPicker`.

### 🔄 Dynamic Updates
- Automatically updates cryptocurrency rates when the user selects a different fiat currency.
- Clean and responsive card layout for a seamless user experience.

---

## 📂 Project Structure
```plaintext
lib
├── main.dart                # Entry point of the application
├── price_screen.dart        # Main screen for displaying cryptocurrency prices
└── coin_data.dart           # API calls and data processing
```

---

## 📋 Dependencies
The following dependencies are used in this project, as defined in the `pubspec.yaml` file:

### Direct Dependencies
- **flutter**: Framework for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **http**: For making API requests to fetch live cryptocurrency data.
- **cupertino_icons**: iOS style icons.

### Development Dependencies
- **flutter_test**: Used for testing the application.

---

## 🙏 Acknowledgments
Special thanks to **Dr. Angela Yu** for her insightful course, [The Complete Flutter Development Bootcamp with Dart](https://www.udemy.com/course/flutter-bootcamp-with-dart/). This application was inspired and developed as part of her lessons.
