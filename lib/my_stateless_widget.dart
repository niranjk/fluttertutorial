import 'package:flutter/material.dart';

class MyStateLessWidget extends StatelessWidget {
  const MyStateLessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Tutorial"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           _section("Child One"),
           _section("Child Two"),
           _section("Child Three"),
          ],
        ));
  }

  Widget _section(String title){
    return  Container(
      decoration: const BoxDecoration(
          color: Colors.yellow,
      ),
      child: Text(title),
    );
  }
}
