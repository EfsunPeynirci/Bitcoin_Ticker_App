# 🤑 Coin Ticker

A Flutter application that fetches and displays live cryptocurrency prices for **Bitcoin (BTC)**, **Ethereum (ETH)**, and **Litecoin (LTC)**. Users can choose from a variety of fiat currencies, and the app dynamically updates the exchange rates using [CoinAPI](https://www.coinapi.io/).

## Features
### 1. Live Cryptocurrency Prices
- Fetches the latest exchange rates for BTC, ETH, and LTC.
- Displays real-time data for user-selected fiat currencies such as USD, EUR, AUD, etc.

### 2. Currency Selection
- Platform-specific UI:
  - **Android**: Uses a `DropdownButton` for selecting currencies.
  - **iOS**: Uses a `CupertinoPicker` for smooth scrolling through currency options.

### 3. Dynamic UI Updates
- Automatically updates cryptocurrency rates when the user changes the selected currency.
- Clean and responsive design with a visually appealing card layout.

---

## Key Learnings
### Concepts Covered:
- **Asynchronous Programming**:
  - Used `Future` and `async-await` to fetch data from the CoinAPI server.
- **Platform-Specific Widgets**:
  - Implemented `DropdownButton` for Android and `CupertinoPicker` for iOS to showcase platform customization.
- **JSON Parsing**:
  - Utilized the `dart:convert` library to decode JSON responses from the API.
- **State Management**:
  - Managed the app's dynamic state with `setState` for real-time UI updates.

---

## Dependencies
### Packages Used:
1. **http**:
   - For making API requests to fetch live cryptocurrency data.
2. **dart:convert**:
   - To parse JSON data from the API responses.
3. **Platform**:
   - To determine the operating system (Android/iOS) and render platform-specific widgets dynamically.

---

## Screenshots
### Default Currency: USD

![bitcointicker_euro](https://github.com/user-attachments/assets/e624b961-2c11-4bc7-a98f-bbc813aea87f)

### Currency Selection

![bitcoinTicker_AUD](https://github.com/user-attachments/assets/e12c0321-0c33-487e-a44e-1e69a077c8ba)

### Updated Rates: AUD

![bitcoinTicker_AUD_1](https://github.com/user-attachments/assets/5679a8fb-83dd-4498-bbcd-e07c88a7695d)

##Video

https://user-images.githubusercontent.com/100719856/227813739-b0565d3c-9036-42da-8806-1d193e6abcbe.mp4

