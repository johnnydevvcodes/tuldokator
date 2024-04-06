
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tuldokator/tuldokator.dart';

void main() {
  testWidgets('Tuldokator widget test', (WidgetTester tester) async {
    // Build the Tuldokator widget with a test itemCount and controller
    const tuldokatorKey = Key('tuldokator');
    final tuldokatorController = TuldokatorController(initialValue: 0);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Tuldokator(
            key: tuldokatorKey,
            itemCount: 5,
            controller: tuldokatorController,
          ),
        ),
      ),
    );

    // Verify that Tuldokator widget is rendered
    expect(find.byKey(tuldokatorKey), findsOneWidget);

    // Verify that the initial selected dot index is correct
    expect(tuldokatorController.value, equals(0));

    // Change the selected dot index programmatically and verify the change
    tuldokatorController.toIndex(3);
    await tester.pump();

    // Verify that the selected dot index has changed
    expect(tuldokatorController.value, equals(3));
  });
}