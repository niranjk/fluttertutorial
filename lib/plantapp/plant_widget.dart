import 'package:flutter/material.dart';
import 'package:fluttertutorial/mocks/mock_plants.dart';
import 'package:fluttertutorial/models/plant_model.dart';

import '../styles.dart';

class PlantWidget extends StatelessWidget {
  final int index;

  const PlantWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var plant = MockPlants.FetchItemByIndex(index);
    return Scaffold(
        appBar: AppBar(
          title: Text(plant.name,
          style: PlantStyles.navBarStyle,
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: _renderBody(context, plant),
            )),
        );
  }

  List<Widget> _renderBody( BuildContext context, PlantModel plantModel){
    var result = <Widget>[];
    // First add the image
    result.add(_plantImage(plantModel.imageUrl, 300.0));
    // Add information
    result.addAll(_renderInfo(context, plantModel));
    return result;
  }

  List<Widget> _renderInfo(BuildContext context, PlantModel plantModel) {
    var result = <Widget>[];
    result.add(_sectionTitle("${plantModel.name} Info"));
    result.add(_sectionInfo(plantModel.description));
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      child: Text(
        text,
        style: PlantStyles.headerLarge)
    );
  }

  Widget _sectionInfo(String info) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      child: Text(
        info,
        style: PlantStyles.textDefault,
      ),
    );
  }

  Widget _plantImage(String url, double height){
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
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
