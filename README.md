# fluttertutorial

A new Flutter tutorial project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## List of Topics 
1. Setup your Flutter project to Github. 
2. Flutter Basics 


# Flutter Basics 
- Checking Platforms iOS and creating CupertinoApp 
- MaterialApp for Android and Web and macos platforms 
- Scaffold 
- AppBar 
- Text
- Column 
- Row 
- Stateless 
- Statefull 
- Creating Stateless Widget 
- Creating Model Data 
- Creating Mock Model Data 
- Using Data to Update View in Flutter 
- Working with Images in Flutter 
- Styling Text with Custom Styles 
- Adding fonts
- List and ListView Widget 
- ListTile 
- Navigation : Navigator, MaterialPageRoute 

# Unit Test in Flutter 
- Matchers 

# Widget Test / Smoke Test 
- dev_dependencies: network_image_mock: ^2.0.1 for Mocking Network Images for Integration Test 
- WidgetTester.pumpWidget(Widget())
- Matcher : findsNothing 

# Integration Test
- IntegrationTestWidgetsFlutterBinding.ensureInitialized()
- WidgetTester.pumpAndSettle()
- Matcher : findsOneWidget 

# Webservices 
- Json String
- Serialization : Encoding 
- Deserialization : Decoding 
- Serializing JSON manually using dart:convert
- Serializing JSON using code generation library json_serializable, build_runner, json_annotation 

# ALL Flutter Commands 
- flutter doctor  
- flutter create <project-name> 
- flutter run  
- flutter --help --verbose 
- flutter test 
- flutter test integration_test
- flutter pub run build_runner build --delete-conflicting-outputs
- flutter pub run build_runner watch --delete-conflicting-outputs
