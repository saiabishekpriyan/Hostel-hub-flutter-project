# Flutter Widgets and the Widget Tree

## Widget Tree Concept
- Flutter builds UIs as a tree of widgets, where each widget describes part of the UI.
- The widget tree is immutable; when state changes, a new tree is built and compared to the old one.
- The framework efficiently updates only the parts of the UI that changed.

## StatelessWidget
- Represents a widget that does not require mutable state.
- The UI is built once and does not change unless the parent widget rebuilds it.
- Example use: static text, icons, images.

```dart
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello, Flutter!');
  }
}
```

## StatefulWidget
- Represents a widget that has mutable state.
- When state changes, `setState()` is called to trigger a rebuild.
- Example use: forms, animations, counters, anything interactive.

```dart
class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: () => setState(() => counter++),
          child: Text('Increment'),
        ),
      ],
    );
  }
}
```

## Summary
- Use StatelessWidget for static content.
- Use StatefulWidget for dynamic, interactive content.
- The widget tree is the foundation of all Flutter UIs.