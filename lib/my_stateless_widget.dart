import 'package:flutter/material.dart';
import 'package:fluttertutorial/models/plant_model.dart';

class MyStateLessWidget extends StatelessWidget {
  final PlantModel plant;

  const MyStateLessWidget({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(plant.name),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderInfo(plant),
        ));
  }

  List<Widget> _renderInfo(PlantModel plantModel) {
    var result = <Widget>[];
    for (int i = 0; i < plantModel.facts.length; i++) {
      result.add(_sectionTitle(plantModel.facts[i].title));
      result.add(_sectionInfo(plantModel.facts[i].info));
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.yellowAccent),
    );
  }

  Widget _sectionInfo(String info) {
    return Text(
      info,
      style: const TextStyle(color: Colors.purple, fontSize: 12),
    );
  }

  Widget _section(String title) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black12,
      ),
      child: Text(title),
    );
  }
}
