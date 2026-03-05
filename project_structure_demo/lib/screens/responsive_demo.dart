import 'package:flutter/material.dart';

class ResponsiveDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('Responsive Design Demo')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (screenWidth < 600) {
            // Mobile layout
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Icon(Icons.phone_android, size: 80, color: Colors.teal),
                   SizedBox(height: 20),
                  Container(
                    width: screenWidth * 0.8,
                    height: 100,
                    color: Colors.tealAccent,
                    child: Center(child: Text('Mobile View', style: TextStyle(fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            );
          } else {
            // Tablet layout
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.tablet, size: 100, color: Colors.orange),
                      SizedBox(height: 10),
                      Container(
                        width: 250,
                        height: 150,
                        color: Colors.orangeAccent,
                        child: Center(child: Text('Tablet Left Panel', style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                  Container(
                    width: 250,
                    height: 150,
                    color: Colors.tealAccent,
                    child: Center(child: Text('Tablet Right Panel', style: TextStyle(fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
