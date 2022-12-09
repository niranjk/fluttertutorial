import 'package:flutter/material.dart';
import 'package:fluttertutorial/models/plant_model.dart';

import '../styles.dart';

class PlantWidget extends StatefulWidget {
  final int index;
  const PlantWidget({Key? key, required this.index}) : super(key: key);

  @override
  State<PlantWidget> createState() => _PlantWidgetState(this.index);
}

class _PlantWidgetState extends State<PlantWidget> {
  final int _index;
  var plant = PlantModel.blank();

  _PlantWidgetState(this._index);

  @override
  void initState(){
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
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

  loadData() async{
     final plantList = await PlantModel.fetchAllPlants();
     setState(() {
       plant = plantList[_index];
     });
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
