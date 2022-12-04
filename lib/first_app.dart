
/// You should import this material package
/// Material is the flutter package to create UI according to
/// Material Design guidelines specified by android
import 'package:flutter/material.dart';

/// Entry point of the application
/// calls runApp function and pass it an object of FirstApp class
/// The purpose of runApp funciton is to attach the given widget to the screen
// void main() => runApp(FirstApp());

/// StatelessWidget is a widget, which does not maintain any state of the widget.
/// FirstApp extends StatelessWidget and overrides its build method.
class FirstApp extends StatelessWidget {
  // This widget is the root of the application 
  const FirstApp({Key? key}) : super(key: key);

  /// The purpose of the build method is to create a part of the UI of the app.
  /// Here, build method uses MaterialApp, a widget to create the root level UI of the app.
  /// It has 3 properties - title, theme and home.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App", 
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ), 
      home: MyFirstScreen(title: "First Screen",),
    );
  }
}
/// Note* StatelessWidget only requires a single method build to be implemented in its derived class.
/// The build method gets the context environment necessary to build the widgets through BuildContext parameter
/// and returns the widget it builds.
class MyFirstScreen extends StatelessWidget {
  /// we have used title as one of the constructor argument and
  /// also used Key as another argument.
  /// The title is used to display the title
  /// Key is used to identify the widget in the build environment.
  const MyFirstScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    /// Scaffold is the top level widget next to MaterialApp widget used to create UI
    /// conforming material design. It has 2 main properties:
    /// - appBar to show the header of the application
    /// - body to show the actual content of the application.
    ///
    /// here the build method calls the build method of Scaffold, which in turn calls
    /// the build method of AppBar and Center to build its user inteface
    /// finally, Center build method calls Text Build method.
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title, style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Text("Hello Flutter"),
      ),
    );
  }
}


