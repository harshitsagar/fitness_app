🏃‍♂️ Fitness Health App (Flutter)
A small fitness application built using Flutter following the provided Figma design, focusing on clean UI, dark/light theme support, and GetX architecture.

📱 Features Implemented
✅ Splash Screen
- Animated splash screen with 3 stages as per Figma:
    1. Logo icon
    2. Logo + brand name
    3. Logo + brand name + subtitle
- Smooth transitions using Flutter animations
- Fully supports Light Mode & Dark Mode

✅ Home Screen
- Greeting section
- Steps tracker card
- Calories burned tracker card
- Icons positioned exactly as per design
- Pixel-close UI matching Figma

✅ Dark / Light Mode
- Automatically switches based on system theme
- All screens adapt correctly (splash + home)
- Colors, icons, and progress bars adjust accordingly

✅ Responsive UI
- Implemented using flutter_screenutil
- Scales properly across different screen sizes

🧠 Architecture & State Management
- GetX used for:
  - State management
  - Navigation
  - Dependency injection
- Clean separation of:
  - UI (Views)
  - Logic (Controllers)
  - Services

📊 Health Data Handling (Important Note) :
❌ What is NOT used
    - Google Fit plugin (health)
    - Health Connect plugins
⚠️ Reason
- At the time of development, available Google Fit / Health plugins have compatibility issues with Flutter 3.38+ due to Android embedding changes, causing build failures.

✅ What is implemented instead
- A Health Service abstraction layer
- Currently uses mock data for:

🧩 Tech Stack
- Flutter
- Dart
- GetX
- flutter_screenutil
- Nunito Font (locally added to match Figma)

📁 Project Structure (Simplified) :
lib/
├── app/
│   ├── modules/
│   │   ├── splash/
│   │   └── home/
│   ├── data/
│   │   └── services/
│   ├── theme/
│   └── routes/
└── main.dart

## How to Run

1. **Clone repository**
   ```bash
   git clone https://github.com/harshitsagar/jiji_ai.git

2. **Install dependencies**
   ```bash
   flutter pub get

3. **Run the App**
   ```bash
    flutter run

