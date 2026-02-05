// Dart Basics Example

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void greet() => print('Hello, my name is $name.');
}

class Counter {
  int _count = 0;
  int get count => _count;
  void increment() => _count++;
}

void main() {
  var p = Person('Alice', 30);
  p.greet();
  var c = Counter();
  c.increment();
  print('Counter: \\${c.count}');
}
