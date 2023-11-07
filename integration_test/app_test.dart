import 'package:app_center_test/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

// Asegúrate de importar el archivo correcto de tu app. import 'package:mi_app/main.dart';
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Verifica que el texto "Hola Mundo" esté presente',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    Finder finder;

    finder = find.byType(TextField).at(0);
    expect(finder, findsOneWidget);
    await tester.enterText(finder, 'arnau');

    finder = find.byType(TextField).at(1);
    expect(finder, findsOneWidget);
    await tester.enterText(finder, '123456789');

    finder = find.byType(ElevatedButton);
    expect(finder, findsOneWidget);
    await tester.tap(finder);

    await tester.pumpAndSettle();

    finder = find.text('¡Bienvenidoooooooo!');
    expect(finder, findsOneWidget);
  });
}
