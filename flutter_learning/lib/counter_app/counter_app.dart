  import 'package:flutter/material.dart';

  void main() => runApp(const CounterApp());

  class CounterApp extends StatelessWidget {
    const CounterApp({super.key});
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Counter App',
        home: Scaffold(
          appBar: AppBar(title: const Text('Counter Example')),
          body: const Center(child: CounterWidget()),
        ),
      );
    }
  }

  class CounterWidget extends StatefulWidget {
    const CounterWidget({super.key});
    @override
    State<CounterWidget> createState() => _CounterWidgetState();
  }

  class _CounterWidgetState extends State<CounterWidget> {
    int count = 0;
    @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Count: $count', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => setState(() => count++),
            child: const Text('Increment'),
          ),
        ],
      );
    }
  }
