import 'package:flutter/material.dart';

void main() {
  runApp(const StudentHubApp());
}

class StudentHubApp extends StatelessWidget {
  const StudentHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentHubHome(),
    );
  }
}

class StudentHubHome extends StatelessWidget {
  const StudentHubHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StudentHub')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // TABLET UI
          if (constraints.maxWidth > 600) {
            return Row(
              children: const [
                Expanded(child: IssueList()),
                Expanded(
                  child: Center(
                    child: Text(
                      'Select an issue to see details',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            );
          }

          // MOBILE UI
          return const IssueList();
        },
      ),
    );
  }
}

class IssueList extends StatelessWidget {
  const IssueList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        IssueCard(title: 'Mess food quality issue'),
        IssueCard(title: 'Water leakage in bathroom'),
        IssueCard(title: 'Fan not working'),
      ],
    );
  }
}

class IssueCard extends StatelessWidget {
  final String title;

  const IssueCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.report_problem),
        title: Text(title),
        subtitle: const Text('Status: Open'),
      ),
    );
  }
}
