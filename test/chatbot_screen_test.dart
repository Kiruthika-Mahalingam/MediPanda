import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medipanda/screens/chatbot_screen.dart';

void main() {
  testWidgets('ChatBot screen displays message box', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ChatBotScreen()));

    // Check if the message box is displayed
    expect(find.byType(TextField), findsOneWidget);
    expect(find.byType(IconButton), findsOneWidget);
    expect(find.text('Ask your question...'), findsOneWidget);
  });
}
