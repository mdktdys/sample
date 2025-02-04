import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:sample/app.dart';

void main() {
  
  // При нажтии 5 раз на кнопку добавить, появляется сообщение с текстом: Успешно
  testWidgets('Click5', (WidgetTester tester) async {
    
    // setup
    await tester.pumpWidget(const MyApp());
    final button = find.byType(FloatingActionButton).first;


    // action
    await tester.tap(button);
    await tester.tap(button);
    await tester.tap(button);
    await tester.tap(button);
    await tester.tap(button);

    await tester.pump();

    // assert
    expect(find.text('Успешно'), findsOneWidget);
  });
}
