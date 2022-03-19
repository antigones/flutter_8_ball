// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_8_ball/sibilla.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_8_ball/main.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Initial string test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => Sibilla(),
      child: const MyApp(),
    ),);

    // Verify that our counter starts at 0.
    expect(find.text('Ask a question and click the button...'), findsOneWidget);
    expect(find.text(''), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.loop));
    await tester.pump();


  });
}
