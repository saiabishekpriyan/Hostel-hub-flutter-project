import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project_structure_demo/main.dart';

void main() {
  testWidgets('Profile Card toggles details', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify initial state
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('Show Details'), findsOneWidget);
    expect(find.text('dev@flutter.io'), findsNothing);

    // Tap the 'Show Details' button and trigger a frame.
    await tester.tap(find.text('Show Details'));
    await tester.pump();

    // Verify that details are shown
    expect(find.text('Hide Details'), findsOneWidget);
    expect(find.text('dev@flutter.io'), findsOneWidget);
    expect(find.text('Dart & Flutter'), findsOneWidget);

    // Tap the 'Hide Details' button and trigger a frame.
    await tester.tap(find.text('Hide Details'));
    await tester.pump();

    // Verify that details are hidden again
    expect(find.text('Show Details'), findsOneWidget);
    expect(find.text('dev@flutter.io'), findsNothing);
  });
}
