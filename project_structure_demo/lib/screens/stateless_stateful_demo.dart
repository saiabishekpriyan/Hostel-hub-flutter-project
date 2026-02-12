import 'package:flutter/material.dart';

class StatelessStatefulDemo extends StatelessWidget {
  const StatelessStatefulDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Demo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. StatelessWidget for static content
            const StatelessHeader(
              title: 'Interactive Demo App',
              subtitle: 'Exploring Flutter Widget Types',
            ),
            
            const Divider(height: 40, thickness: 2, indent: 20, endIndent: 20),
            
            // 2. StatefulWidget for interactive section
            const StatefulCounterSection(),
            
            const Divider(height: 40, thickness: 2, indent: 20, endIndent: 20),
            
            // 3. Another StatefulWidget for color theme demo
            const StatefulColorToggle(),
            
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

/// A StatelessWidget that displays static content.
/// It doesn't have internal state and only rebuilds when parent passes new data.
class StatelessHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const StatelessHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.deepPurple.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          Icon(Icons.widgets_outlined, size: 64, color: Colors.deepPurple),
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[700],
                ),
          ),
        ],
      ),
    );
  }
}

/// A StatefulWidget that maintains a counter state.
/// The UI updates dynamically when _incrementCounter is called.
class StatefulCounterSection extends StatefulWidget {
  const StatefulCounterSection({super.key});

  @override
  State<StatefulCounterSection> createState() => _StatefulCounterSectionState();
}

class _StatefulCounterSectionState extends State<StatefulCounterSection> {
  int _counter = 0;

  void _incrementCounter() {
    // setState notifies the framework that the internal state of this object has changed
    // causing the framework to schedule a build for this State object.
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const Text(
            'Stateful Counter',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Text(
              '$_counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.amber),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: _incrementCounter,
            icon: const Icon(Icons.add),
            label: const Text('Increase Count'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Clicking the button triggers setState() and rebuilds the UI.',
            textAlign: TextAlign.center,
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

/// Another StatefulWidget example demonstrating a boolean toggle.
class StatefulColorToggle extends StatefulWidget {
  const StatefulColorToggle({super.key});

  @override
  State<StatefulColorToggle> createState() => _StatefulColorToggleState();
}

class _StatefulColorToggleState extends State<StatefulColorToggle> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const Text(
            'Dynamic Theme Switch',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: _isToggled ? Colors.blueGrey[900] : Colors.blue[100],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Icon(
                  _isToggled ? Icons.dark_mode : Icons.light_mode,
                  size: 40,
                  color: _isToggled ? Colors.amber : Colors.blue,
                ),
                const SizedBox(height: 8),
                Text(
                  _isToggled ? 'Dark Mode Active' : 'Light Mode Active',
                  style: TextStyle(
                    color: _isToggled ? Colors.white : Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Switch(
                  value: _isToggled,
                  onChanged: (value) {
                    setState(() {
                      _isToggled = value;
                    });
                  },
                  activeColor: Colors.amber,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
