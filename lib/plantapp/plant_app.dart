import 'package:flutter/material.dart';
import 'package:fluttertutorial/plantapp/plant_list_widget.dart';

class PlantApp extends StatelessWidget {
  const PlantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
        home: PlantListWidget());
  }
}
