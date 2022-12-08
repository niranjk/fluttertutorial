import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertutorial/main.dart' as app;
import 'package:fluttertutorial/mocks/mock_plants.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  final IntegrationTestWidgetsFlutterBinding binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Plant Factory App Integration Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    app.main();

    // Trace the timeline of the following operation. The timeline result will
    // be written to `build/integration_response_data.json` with the key
    // `timeline`.
    await binding.traceAction(() async {
      // Trigger a frame.
      await tester.pumpAndSettle();
      
      final mockPlants = MockPlants.FetchAny();
      // Verify text is found
      expect(
        find.text(mockPlants.name),
        findsOneWidget,
      );
    });
  });
}