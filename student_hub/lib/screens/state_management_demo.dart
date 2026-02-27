import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  const StateManagementDemo({super.key});

  @override
  State<StateManagementDemo> createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Threshold logic: Green background if count >= 5
    Color backgroundColor = _counter >= 5 ? Colors.greenAccent : Colors.white;

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management Demo'),
        backgroundColor: Colors.blue,
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Button pressed:',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '$_counter times',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: _counter >= 5 ? Colors.green.shade900 : Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              if (_counter >= 5)
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    '🎉 Goal Reached!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ElevatedButton.icon(
                    onPressed: _decrementCounter,
                    icon: const Icon(Icons.remove),
                    label: const Text('Decrement'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade100,
                      foregroundColor: Colors.red,
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton.icon(
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.add),
                    label: const Text('Increment'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade100,
                      foregroundColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Tip: Notice how the background color changes when you reach 5!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
