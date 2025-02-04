// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:sample/app.dart';

void main() {
  
  // При нажтии 5 раз на кнопку добавить, появляется сообщение с текстом: Успешно
  testWidgets('Click5', (WidgetTester tester) async {
    
    // setup
    await tester.pumpWidget(const MyApp());
    final button = find.byType(AppBar).first;

    // action
    await tester.tap(button);
    await tester.tap(button);
    await tester.tap(button);
    await tester.tap(button);

    // assert
    expect(find.text('Успешно'), findsOneWidget);
  });
}
