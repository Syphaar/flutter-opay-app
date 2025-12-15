# OPay Flutter UI Clone – Responsive Fintech Home Page

Hey 👋  
This project is a **clean and carefully structured Flutter UI clone of the OPay mobile app home screen**. It focuses on realistic fintech UI design, smooth animations, and responsive behavior across mobile, tablet, desktop, and web.

The goal of this project is to demonstrate **real world Flutter UI skills**, proper widget separation, animation handling, and layout responsiveness.
<!-- ## Live Preview -->

<!-- [View Live Demo](#) --> <!-- Replace # with your live URL if available -->

---

## Features

- Wallet balance card with **show / hide balance** toggle
- Smooth **expand & collapse transaction animation**
- Recent transaction list with status indicators
- Wallet quick actions (To OPay, To Bank, Withdraw)
- Services & quick actions grid (Airtime, Data, Betting, Loans, etc.)
- Promotional banner section
- Custom bottom navigation bar
- Responsive layout (centered on large screens)
- Clean, reusable Flutter widgets
- Web-friendly hover interactions
- Works on **Android, iOS, Web, Windows, macOS, and Linux**

---

## Screenshots

### Mobile View

<p align="center">
  <img src="screenshots/mobile_home.png" width="350" alt="Mobile View" />
</p>

*Mobile layout showing a single-column fintech dashboard optimized for touch interaction.*

### Tablet View

<p align="center">
  <img src="screenshots/tablet_home.png" width="600" alt="Tablet View" />
</p>

*Tablet layout with improved spacing and better content visibility.*

### Desktop / Web View

<p align="center">
  <img src="screenshots/desktop_home.png" width="800" alt="Desktop View" />
</p>

*Desktop and web layout centered on large screens for a clean, professional look.*

---

## How It Works

### Wallet Balance & Visibility
The wallet card displays the available balance and allows users to **toggle visibility**.  
When the balance is hidden, the transaction section collapses smoothly using a controlled animation.

### Animated Transaction Section
The transaction history uses a **SizeTransition-based animation**. Ensuring that both opening and closing feel natural, just like a real fintech app.

### Responsive Layout
- On smaller screens, the layout behaves like a traditional mobile app
- On larger screens, content is **centered with a max width** for better readability
- Padding and spacing adapt automatically based on screen size

### Services & Quick Actions
Frequently used services are displayed in a clean grid layout, making common actions easy to access at a glance.

### Hover & Interaction (Web/Desktop)
Hover states are handled using `MouseRegion`, improving usability on desktop and web without affecting mobile behavior.

---

## Tech Stack

- **Flutter**
- **Dart**
- Material UI Components

## Project Structure
```
lib/
├── main.dart # App entry point
├── opay_app.dart # MaterialApp configuration & theme
├── pages/
│ └── opay_home_page.dart # Main home screen layout & state handling
├── widgets/
│ ├── wallet_card.dart # Wallet balance UI & visibility toggle
│ ├── transaction_section.dart # Animated transaction history section
│ ├── wallet_actions_section.dart# Transfer & withdraw actions
│ ├── wallet_info_section.dart # Referral / wallet info card
│ ├── services_quick_actions.dart# Services & shortcuts grid
│ ├── promo_banner.dart # Promotional banner section
│ └── bottom_nav.dart # Bottom navigation bar

```

## How To Run

### Prerequisites
- Flutter SDK (≥ 3.19 recommended)
- Dart SDK

### Installation & Run

```bash
# 1. Clone the repository
git clone https://github.com/Syphaar/flutter-opay-app
cd flutter-opay-app

# 2. Get dependencies
flutter pub get

# 3. Run the app
flutter run
```

### Supported Platforms
flutter run -d chrome      # Web
flutter run -d windows     # Windows
flutter run -d macos       # macOS
flutter run -d linux       # Linux
flutter run -d android     # Android device/emulator
flutter run -d ios         # iOS device/simulator

## Notes

This project is not affiliated with OPay

Built strictly for learning, UI practice, and portfolio use

All brand names and references belong to their respective owners

## Contributing

Contributions are welcome.
If you plan to make major changes, please open an issue first so we can discuss it.

---
Built with ❤️ by Sifon Emmanuel
If you find this useful, don’t forget to ⭐ the repo!
