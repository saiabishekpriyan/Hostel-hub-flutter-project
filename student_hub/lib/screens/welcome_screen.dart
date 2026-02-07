import 'package:flutter/material.dart';
import '../widgets/action_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // State variables for the button
  String _buttonText = "Get Started";
  Color _buttonColor = Colors.blue;

  void _handleButtonPress() {
    setState(() {
      if (_buttonText == "Get Started") {
        _buttonText = "Loading...";
        _buttonColor = Colors.green;
      } else {
        _buttonText = "Get Started";
        _buttonColor = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StudentHub"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to StudentHub",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            // Hostel/Student related icon
            Icon(
              Icons.apartment_rounded,
              size: 100,
              color: Colors.blue.shade700,
            ),
            const SizedBox(height: 50),
            // Custom button demonstrating state change
            ActionButton(
              text: _buttonText,
              color: _buttonColor,
              onPressed: _handleButtonPress,
            ),
          ],
        ),
      ),
    );
  }
}
