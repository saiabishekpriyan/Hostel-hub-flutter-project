import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Widget Demo')),
        body: const Center(child: DemoContent()),
      ),
    );
  }
}

class DemoContent extends StatelessWidget {
  const DemoContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('StatelessWidget Example'),
        const SizedBox(height: 8),
        const MyStatelessWidget(),
        const SizedBox(height: 24),
        const Text('StatefulWidget Example'),
        const SizedBox(height: 8),
        MyStatefulWidget(),
      ],
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text('Hello from StatelessWidget!');
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
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
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
