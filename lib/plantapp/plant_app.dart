import 'package:flutter/material.dart';
import 'package:fluttertutorial/plantapp/plant_list_widget.dart';

import '../mocks/mock_plants.dart';

class PlantApp extends StatelessWidget {
  const PlantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final plantModel = MockPlants.FetchAll();

    return MaterialApp(
        home: PlantListWidget(
      plants: plantModel,
    ));
  }
}
