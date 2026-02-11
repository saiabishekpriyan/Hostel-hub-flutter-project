import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Tree Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfileCard(),
    );
  }
}

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  // State variable to toggle details visibility
  bool _showDetails = false;

  void _toggleDetails() {
    setState(() {
      _showDetails = !_showDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive UI Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Profile Image
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.deepPurpleAccent,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 15),
              
              // Name
              Text(
                'Flutter Developer',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 5),
              
              // Bio/Description
              const Text(
                'Building beautiful UIs with Widget Trees.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),

              // Toggle Button
              ElevatedButton(
                onPressed: _toggleDetails,
                child: Text(_showDetails ? 'Hide Details' : 'Show Details'),
              ),

              // Conditional Rendering based on State
              if (_showDetails) ...[
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 10),
                _buildDetailRow(Icons.email, 'dev@flutter.io'),
                const SizedBox(height: 8),
                _buildDetailRow(Icons.location_on, 'Internet'),
                const SizedBox(height: 8),
                _buildDetailRow(Icons.code, 'Dart & Flutter'),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.deepPurple),
        const SizedBox(width: 10),
        Text(text),
      ],
    );
  }
}
