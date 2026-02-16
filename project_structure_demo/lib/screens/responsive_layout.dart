import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine screen width for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Dashboard'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[100],
        child: Column(
          children: [
            // Header Section - Row used for layout
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Here is your hostel overview for today.',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Dynamic Content Section - Uses Row or Column based on screen width
            Expanded(
              child: isMobile
                  ? Column(
                      children: [
                        _buildPanel('Statistics', Colors.amber, Icons.analytics),
                        const SizedBox(height: 16),
                        _buildPanel('Recent Activity', Colors.greenAccent, Icons.history),
                      ],
                    )
                  : Row(
                      children: [
                        _buildPanel('Statistics', Colors.amber, Icons.analytics),
                        const SizedBox(width: 16),
                        _buildPanel('Recent Activity', Colors.greenAccent, Icons.history),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPanel(String title, Color color, IconData icon) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color, width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: color.withOpacity(0.8)),
            const SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Panel details go here...',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
