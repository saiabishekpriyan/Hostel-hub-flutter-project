# Flutter Project Structure Demo

This project is a demonstration of the default folder structure in a new Flutter application. It serves as a learning resource to understand how Flutter organizes code, assets, and configuration files.

## Project Structure Documentation

For a detailed breakdown of the `lib`, `android`, `ios`, `test`, and other directories, please refer to the **[Project Structure Guide](PROJECT_STRUCTURE.md)**.

## Folder Hierarchy

Below is a high-level view of the project structure:

```
project_structure_demo/
├── android/            # Android native project files
├── ios/                # iOS native project files
├── lib/                # Main Dart code (your app logic)
│   └── main.dart       # Entry point of the app
├── test/               # Unit and Widget tests
├── pubspec.yaml        # Project dependencies and configuration
├── .gitignore          # Git ignore rules
└── README.md           # Project documentation
```

## Reflection

### Why is it important to understand each folder’s purpose?
Understanding the purpose of each folder allows developers to:
1.  **Navigate efficiently**: Know exactly where to look for UI code, native configurations, or assets.
2.  **Debug effectively**: Quickly identify if an issue is platform-specific (Android/iOS) or logic-related (Dart).
3.  **Configure correctly**: properly manage dependencies in `pubspec.yaml` and platform settings in `Info.plist` or `build.gradle`.

### How does a well-organized structure improve teamwork and development speed?
A standardized and modular structure ensures that:
- **Onboarding is faster**: New team members can immediately understand the project layout.
- **Conflicts are minimized**: Separation of concerns (e.g., separating UI from business logic) reduces merge conflicts.
- **Scalability is easier**: Features can be added without cluttering the codebase, maintaining a clean and maintainable project.

## Sprint 2: Widget Tree & Reactive UI

### Profile Card Demo
A simple app demonstrating a hierarchical widget tree and state management. The "Profile Card" allows users to toggle the visibility of contact details.

### Widget Tree Diagram
```
MaterialApp
 ┗ Scaffold
    ┣ AppBar
    ┗ Body
       ┗ Center
          ┗ Container
             ┗ Column
                ┣ CircleAvatar
                ┣ Text (Name)
                ┣ Text (Bio)
                ┣ ElevatedButton (Toggle)
                ┗ (Conditional) Column
                   ┗ Row (Detail)
```

### Reflection

#### How does the widget tree help Flutter manage complex UIs?
The widget tree breaks down complex interfaces into small, reusable, and nested components. This composition model allows developers to build sophisticated UIs by combining simple widgets (like `Row`, `Column`, `Container`) in a structured hierarchy, making the code readable and manageable.

---

## Sprint 3: Stateless vs. Stateful Widgets

### Interactive Demo App
This sprint demonstrates the fundamental difference between `StatelessWidget` and `StatefulWidget`.

#### 1. Stateless Widgets
A `StatelessWidget` describes part of the user interface which only depends on the configuration information in the object itself and the `BuildContext` in which the widget is inflated. It has no internal state that can change over time.

**Code Example:**
```dart
class StatelessHeader extends StatelessWidget {
  final String title;

  const StatelessHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 24));
  }
}
```

#### 2. Stateful Widgets
A `StatefulWidget` is a widget that has mutable state. It is useful when the part of the user interface you are describing can change dynamically (e.g., due to user interaction or data updates).

**Code Example:**
```dart
class StatefulCounter extends StatefulWidget {
  @override
  _StatefulCounterState createState() => _StatefulCounterState();
}

class _StatefulCounterState extends State<StatefulCounter> {
  int count = 0;

  void increment() {
    setState(() => count++);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $count'),
        ElevatedButton(onPressed: increment, child: Text('Increase')),
      ],
    );
  }
}
```

### Reflection

#### When should you prefer Stateless widgets?
Prefer `StatelessWidget` whenever the UI component is static or only depends on parameters passed by its parent. Using Stateless widgets improves performance and makes the code easier to reason about because they are immutable and don't require managing a `State` object.

#### When are Stateful widgets necessary?
`StatefulWidget` is necessary when a widget needs to store data that can change during its lifetime, such as text field inputs, checkbox states, animations, or data fetched from a database. If the UI needs to update "on the fly" without rebuilding the entire screen from the top, a Stateful widget is the tool to use.

#### How does Flutter rebuild only the widgets that change?
Flutter uses a "reconciliation" process. When `setState()` is called, Flutter marks that specific `State` object as dirty. During the next frame, Flutter only executes the `build()` method of that specific widget and its descendants. By keeping state localized (using small Stateful widgets), Flutter minimizes the number of widgets that need to be recalculated, ensuring high performance.

#### Why is understanding widget types essential for performance and clarity?
1. **Performance**: Avoids unnecessary rebuilds of static content.
2. **Clarity**: Clearly separates "view-only" components from "logic-heavy" interactive components.
3. **Maintainability**: Makes it obvious where state is being managed and updated.
