import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/details_screen.dart';
import 'widgets/like_button.dart';

void main() {
  runApp(CustomWidgetDemoApp());
}

class CustomWidgetDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: DemoNavigationHome(),
    );
  }
}

class DemoNavigationHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widgets Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Explore Reusable Widgets',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Visit Home Screen'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
              child: Text('Visit Details Screen'),
            ),
            SizedBox(height: 30),
            Text('Interaction Example:'),
            LikeButton(),
          ],
        ),
      ),
    );
  }
}
