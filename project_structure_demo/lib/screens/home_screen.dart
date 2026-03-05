import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView(
        children: [
          InfoCard(title: 'Profile', subtitle: 'View details', icon: Icons.person),
          InfoCard(title: 'Settings', subtitle: 'Manage preferences', icon: Icons.settings),
          InfoCard(title: 'Logout', subtitle: 'Exit your account', icon: Icons.exit_to_app),
        ],
      ),
    );
  }
}