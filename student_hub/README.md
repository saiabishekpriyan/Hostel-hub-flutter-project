# StudentHub (HostelHub)

A simplified issue reporting and tracking app for college hostels, built with Flutter.
This project is part of **Kalvium Sprint #2: Introduction to Flutter & Dart**.

## 📂 Folder Structure Explanation

This project follows a clean and scalable folder structure:

- **Example**: `lib/`
  - **`main.dart`**: The entry point of the application. It sets up the `MaterialApp`, theme, and loads the initial screen.
  - **`screens/`**: Contains the Visual Interface of the app (pages). Keeping screens separate makes it easier to manage navigation and UI logic as the app grows.
    - `welcome_screen.dart`: The initial landing page of the app.
  - **`widgets/`**: Reusable UI components. This promotes code reusability and consistency across different screens.
    - `action_button.dart`: A custom button widget used in the welcome screen.

**Why this is good for scaling:**
Separating screens and widgets ensures that as we add more features (like Issue Reporting, Maintenance Request forms), our code remains organized. We can reuse buttons, input fields, and other widgets without duplicating code.

## 🚀 How to Run the Project

1.  **Get Dependencies:**
    Open your terminal in the project folder and run:
    ```bash
    flutter pub get
    ```

2.  **Run the App:**
    Ensure an emulator is running or a device is connected, then run:
    ```bash
    flutter run
    ```

## 📱 Welcome UI Explanation

The **Welcome Screen** provides a simple and friendly entry point for users.
- It uses a `Scaffold` with an `AppBar` titled "StudentHub".
- A `Column` widget arranges the content vertically:
  - A friendly "Welcome" text.
  - A relevant icon (Apartment/Hostel).
  - A dynamic "Get Started" button.
- **Interactivity:** The button demonstrates state management. When pressed, it updates its text to "Loading..." and changes color, showcasing how `StatefulWidget` handles user interactions.

## 🧠 Reflection (Sprint Learning)

- **Flutter Widgets:** I learned how to use fundamental widgets like `Scaffold`, `AppBar`, `Column`, `Center`, and `Icon` to build a layout. I also learned about custom widgets to keeping code clean.
- **Dart State Management:** I understood the difference between `StatelessWidget` and `StatefulWidget`. Using `setState()` allowed me to update the UI dynamically (changing button text/color) when the state changed.
- **Future Structure:** By organizing code into `screens` and `widgets` now, it will be much easier to integrate Firebase and add complex features like authentication and database streams in future sprints without cluttering a single file.

## 📸 Demo Screenshot
*(Place your screenshot here)*

---

## 📝 PR & Video Guidance

### suggested Commit Message
`feat: implement welcome screen with state management and folder structure`

### Suggested PR Title
`[Sprint-2] Flutter & Dart Basics – StudentHub`

### 🎥 Video Script (1-2 minutes)

**Introduction:**
"Hi, I'm [Your Name]. This is my submission for Kalvium Sprint 2, the StudentHub app."

**Folder Structure:**
"First, looking at the code structure:
- I have `main.dart` as the entry point.
- I've separated my UI into a `screens` folder, where I have the `WelcomeScreen`.
- And a `widgets` folder for reusable components like this `ActionButton`. This structure helps in scaling the app for future features."

**App Demo:**
"Now running the app:
- You see the 'StudentHub' AppBar and the Welcome text with a hostel icon.
- Here is the state management in action: When I click the 'Get Started' button, notice how it changes color to green and the text changes to 'Loading...'. This is done using `setState` in the StatefulWidget."

**Conclusion:**
"That's the basic setup for StudentHub. Thank you!"
