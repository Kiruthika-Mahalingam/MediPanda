import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medipanda/screens/language_selection_screen.dart';

void main() {
  testWidgets('Language selection screen displays languages', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LanguageSelectionScreen()));

    // Check if the languages are displayed
    expect(find.text('Tamil (தமிழ்)'), findsOneWidget);
    expect(find.text('Hindi (हिन्दी)'), findsOneWidget);
    expect(find.text('Mandarin (普通话)'), findsOneWidget);
    expect(find.text('Arabic (العربية)'), findsOneWidget);
    expect(find.text('Bengali (বাংলা)'), findsOneWidget);
    expect(find.text('Portuguese (Português)'), findsOneWidget);
    expect(find.text('Russian (Русский)'), findsOneWidget);
    expect(find.text('Japanese (日本語)'), findsOneWidget);
    expect(find.text('German (Deutsch)'), findsOneWidget);
    expect(find.text('French (Français)'), findsOneWidget);
  });
}
