            import 'package:flutter/material.dart';

            class Concept3UI extends StatelessWidget {
            const Concept3UI({super.key});

            @override
            Widget build(BuildContext context) {
                return Scaffold(
                appBar: AppBar(
                    title: const Text('StudentHub'),
                ),
                body: LayoutBuilder(
                    builder: (context, constraints) {
                    // Tablet layout
                    if (constraints.maxWidth > 600) {
                        return Row(
                        children: [
                            Expanded(
                            child: IssueList(),
                            ),
                            Expanded(
                            child: IssueDetails(),
                            ),
                        ],
                        );
                    }

                    // Mobile layout
                    return IssueList();
                    },
                ),
                );
            }
            }

            class IssueList extends StatelessWidget {
            @override
            Widget build(BuildContext context) {
                return ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                    IssueCard(title: 'Mess food issue'),
                    IssueCard(title: 'Water leakage'),
                    IssueCard(title: 'Room cleaning delay'),
                ],
                );
            }
            }

            class IssueDetails extends StatelessWidget {
            @override
            Widget build(BuildContext context) {
                return const Center(
                child: Text(
                    'Select an issue to see details',
                    style: TextStyle(fontSize: 18),
                ),
                );
            }
            }

            class IssueCard extends StatelessWidget {
            final String title;

            const IssueCard({required this.title});

            @override
            Widget build(BuildContext context) {
                return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                    title: Text(title),
                    subtitle: const Text('Status: Open'),
                    leading: const Icon(Icons.report_problem),
                ),
                );
            }
            }
