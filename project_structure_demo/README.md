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

#### Why is Flutter’s reactive model more efficient than manually updating views?
In a reactive model, the UI is a function of the state. When `setState()` is called, Flutter marks the widget as "dirty" and automatically rebuilds only the parts of the UI that need to change. This eliminates the need to manually track and update individual DOM elements or views (unidirectional data flow), reducing bugs and improving performance.
