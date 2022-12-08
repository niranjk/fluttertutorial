// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fluttertutorial/main.dart';
import 'package:fluttertutorial/mocks/mock_plants.dart';
import 'package:fluttertutorial/plantapp/plant_app.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows you to build and interact
  // with widgets in the test environment.
  testWidgets("Plant Factory App Startup Smoke Test", (widgetTester) async {
    // Test codes here..
    mockNetworkImagesFor(() async {
      // Create the widget by telling the tester to build it.
      await widgetTester.pumpWidget(const PlantApp());
      final mockPlants = MockPlants.FetchAny();
      // Use the `findsOneWidget` matcher provided by flutter_test to verify
      // that the Text widgets appear exactly once in the widget tree.
      expect(find.text(mockPlants.name), findsOneWidget);
      expect(find.text("${mockPlants.name}lsdjf"), findsNothing);
    });
  });
}
