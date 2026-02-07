import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const StudentHubApp());
}

class StudentHubApp extends StatelessWidget {
  const StudentHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudentHub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}
