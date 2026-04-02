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

*(Place your screenshot here)*

---

## 📝 Handling User Input (Sprint Learning)

In this lesson, I implemented a custom form to handle user input efficiently.

### 🛠️ Key Components Used
- **`TextField` / `TextFormField`**: Used to capture user data like name and email. `TextFormField` was preferred for its built-in integration with `Form` validation.
- **`ElevatedButton`**: Acts as the submission trigger, executing validation logic and providing feedback.
- **`Form` & `GlobalKey<FormState>`**: Managed the state of the multiple input fields and coordinated the validation process.

### 💻 Code Snippets

**Input Validation Logic:**
```dart
TextFormField(
  controller: _emailController,
  decoration: InputDecoration(labelText: 'Email'),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!value.contains('@')) {
      return 'Enter a valid email address';
    }
    return null;
  },
)
```

**Form Submission & Feedback:**
```dart
onPressed: () {
  if (_formKey.currentState!.validate()) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Form Submitted Successfully!')),
    );
  }
}
```

### 🧠 Reflections

**1. Why is input validation important in mobile apps?**
Input validation is crucial because it ensures the data collected is accurate, complete, and formatted correctly before it reaches the backend or is processed by the app. It prevents bugs, crashes from unexpected null values, and improves security by filtering out malicious or nonsensical input. It also provides immediate feedback to the user, making the app feel more robust and professional.

**2. What’s the difference between `TextField` and `TextFormField`?**
- `TextField` is a basic input widget that allows user text entry but doesn't have built-in validation logic handled by a `Form`.
- `TextFormField` is a wrapper around `TextField` that adds additional features like the `validator` property and `onSaved` callback. It integrates seamlessly with the `Form` widget, allowing you to validate multiple fields at once using a `FormState` key.

**3. How does form state management simplify validation?**
Form state management (via `GlobalKey<FormState>`) allows you to treat a group of input fields as a single unit. Instead of checking each controller manually, you can call `_formKey.currentState!.validate()`, which automatically triggers the `validator` function of every `TextFormField` within that form. This significantly reduces boilerplate code and ensures a consistent user experience during submission.

## 📸 Form Screenshots
*(Add your screenshots here: Initial Form, Validation Errors, Success SnackBar)*

---

## ⚡ Managing Local UI State (Sprint Learning)

In this lesson, I learned how to handle dynamic updates in Flutter using `setState()`.

### 🛠️ Key Concepts Implemented
- **`StatefulWidget`**: Used when the UI needs to change based on internal data updates.
- **`setState()`**: The primary method to trigger a rebuild of the widget's subtree when the state changes.
- **Conditional UI Logic**: Implemented logic to change the background color and show a "Goal Reached" message when the counter hit a specific threshold.

### 💻 Code Snippets

**State Update with `setState()`:**
```dart
void _incrementCounter() {
  setState(() {
    _counter++;
  });
}
```

**Conditional UI Styling:**
```dart
Color backgroundColor = _counter >= 5 ? Colors.greenAccent : Colors.white;

return Scaffold(
  body: AnimatedContainer(
    duration: Duration(milliseconds: 500),
    color: backgroundColor,
    child: Text('Count: $_counter'),
  ),
);
```

### 🧠 Reflections

**1. What’s the difference between Stateless and Stateful widgets?**
- **StatelessWidget**: These are immutable. Once built, their properties cannot change. They are used for static content like icons, labels, or buttons that don't need to track data changes internally.
- **StatefulWidget**: These maintain internal state that can change over time. When the state changes, the widget can rebuild itself to reflect the new data. They are used for interactive elements like forms, sliders, and counters.

**2. Why is `setState()` important for Flutter’s reactive model?**
`setState()` is the "trigger" for Flutter's reactive framework. It tells the framework that the underlying data has changed, and it needs to run the `build()` method again to sync the UI with the new data. Without `setState()`, the data might change in memory, but the user would never see those changes on the screen.

**3. How can improper use of `setState()` affect performance?**
Calling `setState()` too frequently or in large widgets can lead to performance bottlenecks. It causes the entire widget subtree to rebuild, which can be expensive if the subtree is complex. To optimize, it's best to call `setState()` only when necessary and keep stateful widgets as small as possible (lifting state up only when needed) to minimize the number of rebuilt widgets.

## 📸 State Management Screenshots
*(Add your screenshots here: Counter at 0, Counter at 5 with Green Background)*

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

## 🧭 Multi-Screen Navigation (Sprint 2)

This section demonstrates how to manage multiple screens in Flutter using `Navigator` and named routes.

### Files Created
- `lib/screens/home_screen.dart`: The main landing page.
- `lib/screens/second_screen.dart`: A secondary page to navigate to.
- `lib/main.dart`: configured with `initialRoute` and `routes`.

### Code Snippets

**main.dart Route Definition:**
```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/second': (context) => SecondScreen(),
  },
);
```

**Navigating forward:**
```dart
Navigator.pushNamed(context, '/second');
```

**Navigating back:**
```dart
Navigator.pop(context);
```

### 📸 Screenshots
| Home Screen | Second Screen |
|Data to come|Data to come|

### 🧠 Reflection: Navigator & Named Routes

**How Navigator works:**
Flutter's `Navigator` works like a stack data structure (LIFO - Last In, First Out).
- `pushNamed` adds a new route to the top of the stack, making it visible.
- `pop` removes the top route from the stack, revealing the previous screen underneath.

**Benefits of Named Routes:**
1.  **Readability**: `Navigator.pushNamed(context, '/profile')` is clearer than constructing a `MaterialPageRoute` inline.
2.  **Centralized Configuration**: All routes are defined in `main.dart`, making it easier to manage and update the app's structure.
3.  **Deep Linking**: Named routes are essential for handling deep links from web or notifications.
