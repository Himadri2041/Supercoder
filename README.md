# supercoder

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# Developer Recruitment Task – Flutter (GetX)

##  Overview
This project is a Flutter application built as part of the Developer Recruitment Task.  
It follows **GetX** for state management, enforces **View–Controller separation**  

Key Features:
- Clean separation between **View** and **Controller**
- Reactive UI with **Obx** and **Rx**
- Native Android permission handling (iOS optional)
- Reusable widgets for buttons and input fields  

---

## Installation & Run Instructions

1. **Clone Repository**
   ```bash
   git clone https://github.com/Himadri2041/Supercode
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Run on Device/Emulator**
   ```bash
   flutter run
   ```

4. **Build APK (Optional)**
   ```bash
   flutter build apk --release
   ```

---

## 📂 Project Structure

```
project_root/
 ├─ android/...                # Native Android setup (MainActivity, Manifest edits for permissions)
 ├─ lib/
 │   ├─ main.dart              # Entry point of the app
 │   ├─ app_routes.dart        # Route definitions
 |   ├─ splash.dart
 │   ├─ bindings/
 │   │   └─ initial_binding.dart   # Initial dependency injection bindings
 │   ├─ controllers/           # Business logic & state management
 │   │   ├─ profile_controller.dart
 |   |   ├─ splash_controller.dart
 │   │   └─ campaign_controller.dart
 │   ├─ views/                 # UI layer (screens only)
 │   │   ├─ home/
 │   │   │   └─ home_page.dart
 │   │   ├─ campaign/
 │   │   │   └─ campaign_matching_page.dart
 │   │   └─ profile/
 │   │       ├─ my_info_page.dart
 │   │       ├─ basic_info_page.dart
 │   │       └─ password_settings_page.dart
 │   └─ widgets/               # Common reusable UI components
 │       ├─ primary_button.dart
 │       └─ input_field.dart
 └─ README.md
```

---

## Implementation Assumptions & Decisions

1. **State Management**
   - Only **GetX** is used.
   - Controllers manage logic, Views handle rendering.

2. **Architecture**
   - Controllers expose reactive variables (`Rx<Type>`) observed in Views using `Obx`.

3. **Permissions**
   - Android permissions handled via **native code** (Kotlin + Manifest).
   - iOS permission handling  added

4. **Reusable Components**
   - `PrimaryButton` and `InputField` abstracted for consistency.

5. **Routing**
   - Centralized route management in `app_routes.dart`.

6. **Extra Points**
   - Animation is added.

---


