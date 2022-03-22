// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_8_ball/sibilla.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_8_ball/main.dart';
import 'package:provider/provider.dart';

final List<String> _answers = [
  "As I see it, yes",
  "It is certain",
  "It is decidedly so",
  "Most likely",
  "Outlook good",
  "Signs point to yes",
  "Without a doubt",
  "Yes",
  "Yes – definitely",
];


void main() {
  testWidgets('Get answer test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Ask a question and click the button...'), findsOneWidget);
    expect(find.text(''), findsNothing);
    await tester.tap(find.byType(FilledButton));
    await tester.pump(const Duration(seconds: 3));
    expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              (widget is Text) && (_answers.contains(widget.data)),
        ),
        findsOneWidget);
    await tester.pump(const Duration(seconds: 3));
  });
}
