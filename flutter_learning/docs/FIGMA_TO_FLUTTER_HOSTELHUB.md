# Translating Figma to Flutter UI (HostelHub)

## Mapping Figma Elements to Flutter Widgets
- **Text (Figma) → Text (Flutter)**
- **Button (Figma) → ElevatedButton/TextButton (Flutter)**
- **Input Field (Figma) → TextField (Flutter)**
- **Card/List (Figma) → Card/ListView (Flutter)**
- **Layout (Figma) → Column, Row, Padding, SizedBox (Flutter)**

## Example: Login Form
```dart
Column(
  children: [
    Text('Login'),
    TextField(decoration: InputDecoration(labelText: 'Email')),
    TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
    ElevatedButton(onPressed: () {}, child: Text('Login')),
  ],
)
```

## Example: Issue List
```dart
ListView(
  children: [
    Card(
      child: ListTile(
        title: Text('Mess Issue'),
        subtitle: Text('Open'),
      ),
    ),
  ],
)
```

**Each widget matches a Figma element, making the UI easy to build and understand.**
