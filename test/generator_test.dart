// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hello_flutter/app/generator.dart';

void main() {
  testWidgets('Name Pair Generator smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(new GeneratorApp());

    // Verify that our counter starts at 0.
    expect(find.text('HelloWorld'), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.list));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('HelloWorld'), findsOneWidget);
  });
}