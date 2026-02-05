# Dart Basics for Flutter

## Why Dart for Flutter?
- Dart is optimized for UI: fast, predictable, and supports both JIT (for Hot Reload) and AOT (for release builds).
- Easy to learn for those familiar with Java, JavaScript, or C#.
- Strong typing, null safety, async/await, and modern OOP features.

## Classes and Objects
```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is $name.');
  }
}

var p = Person('Alice', 30);
p.greet(); // Output: Hello, my name is Alice.
```

## Constructors
- Default, named, and factory constructors are supported.

```dart
class Point {
  final int x, y;
  Point(this.x, this.y);
  Point.origin() : x = 0, y = 0;
}

var a = Point(2, 3);
var b = Point.origin();
```

## Methods
- Instance and static methods, getters, and setters.

```dart
class Counter {
  int _count = 0;
  int get count => _count;
  void increment() => _count++;
}

var c = Counter();
c.increment();
print(c.count); // Output: 1
```

## Summary
- Dart is concise, expressive, and ideal for Flutter development.
- Mastering classes, objects, constructors, and methods is key to building robust Flutter apps.