import 'package:flutter/material.dart';

///
/// Contents in android and ios and web directory are similar to the native ones
/// Flutter automatically create iOS and Android and Web apps and auto generates those files and update them
/// All the app development is mostly focused in lib directory where we write our dart files..
///
/// main.dart is the starting point of our app
///
/// List of All Important Toold and Concepts of IDE for Flutter Development
/// 1. Dart Analysis : comes from Dart Plugin : used to analyze the Dart code and gives you the error or warning generated
/// 2. Flutter Outline : TreeStructure of the widgets of your entire codebase of app : useful for navigation
/// 3. Flutter Inspector : First Run your app in Simulator/Device : useful for debugging and crosschecking: if you click each widget in a Widget Tree
/// it will tell all the properties of that widget
/// 4. Toggle Select Widget Tool : It helps to select anything displayed in the Simulator Screen.
/// 5. Overlay Guidelines to assist you fix the layout issues.
/// 6. Run Console : Shows all the messages of app while running your app

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue ,
      ),
      home: const MyHomePage(title: 'Flutter Home Page Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      padding: EdgeInsets.all(25),
      child: Center(
        child: Text(
          data: "Flutter Tutorial",
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 0.5,
            fontSize: 20,
          ),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}


