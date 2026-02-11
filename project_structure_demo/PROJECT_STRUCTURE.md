# Flutter Project Structure

This document explains the default folder structure of a Flutter application and the purpose of each directory and file.

## Folder Overview

| Folder/File | Purpose |
| :--- | :--- |
| `lib/` | Contains the main Dart code for the application. |
| `android/` | Contains Android-specific build files and configurations. |
| `ios/` | Contains iOS-specific build configurations and assets. |
| `assets/` | (Optional) Stores static resources like images, fonts, and JSON files. |
| `test/` | Contains unit, widget, and integration tests. |
| `pubspec.yaml` | Manages project dependencies, assets, and metadata. |
| `build/` | Contains auto-generated compiled files (do not edit). |
| `.gitignore` | Specifies files to be ignored by Git version control. |
| `README.md` | Provides project information and setup instructions. |

## Detailed Breakdown

### 1. `lib/`
This is the core directory where most of your development happens.
- **`main.dart`**: The entry point of the Flutter application. It contains the `main()` function which runs the app.
- You can organize this folder further into `screens/`, `widgets/`, `services/`, and `models/` for better scalability.

### 2. `android/`
This folder contains the native Android project.
- It is used when building the app for Android devices.
- **`android/app/build.gradle`**: Key file for configuring Android build settings like `applicationId`, `minSdkVersion`, and `targetSdkVersion`.
- **`AndroidManifest.xml`**: Declares app permissions (e.g., internet access) and activities.

### 3. `ios/`
This folder contains the native iOS project.
- It is used when building the app for iOS devices (iPhone/iPad).
- **`ios/Runner/Info.plist`**: Key configuration file for iOS apps, managing permissions (e.g., camera usage) and app metadata.
- **`AppDelegate.swift`** (or `.m`): Handles the app life cycle on iOS.

### 4. `assets/`
*Note: This folder does not exist by default and must be created manually.*
- Used to store static files such as images, fonts, and configuration files.
- **Registration**: Assets must be declared in the `pubspec.yaml` file under the `flutter:` section to be bundled with the app.
  ```yaml
  flutter:
    assets:
      - assets/images/
      - assets/fonts/
  ```

### 5. `test/`
Contains testing code to ensure the app works as expected.
- **`widget_test.dart`**: A default test file that verifies the counter app functionality.
- Helps in Test-Driven Development (TDD) and maintaining code quality.

### 6. `pubspec.yaml`
The project's configuration file written in YAML.
- **Dependencies**: Lists external packages required by the app (e.g., `cupertino_icons`).
- **Dev Dependencies**: Packages needed only during development (e.g., `flutter_test`, `flutter_lints`).
- **Assets & Fonts**: Defines assets and custom fonts used in the app.

## Reflection

Understanding this folder structure is crucial for:
- **Scalability**: Keeps code organized as the project grows.
- **Maintainability**: Makes it easier to find and fix bugs or add features.
- **Cross-Platform Development**: clearly separates shared Dart logic (`lib/`) from platform-specific configurations (`android/`, `ios/`).
- **Teamwork**: A standard structure ensures that any Flutter developer can quickly understand and navigate the codebase.
