import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertutorial/models/plant_model.dart';
import 'package:fluttertutorial/plant_widget.dart';
import 'package:fluttertutorial/styles.dart';

class PlantListWidget extends StatelessWidget {
  final List<PlantModel> plants;

  const PlantListWidget({Key? key, required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Plants Factory",
          style: PlantStyles.navBarStyle,
        ),
      ),
      body: ListView.builder(
          itemCount: plants.length, itemBuilder: _listViewItemBuilder),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var plant = plants[index];
    return ListTile(
      contentPadding: const EdgeInsets.all(20.0),
      leading: _itemThumbnail(plant),
      title: _itemTitle(plant),
      onTap: () => _navigateToPlantDetailPage(context, index),
    );
  }

  void _navigateToPlantDetailPage(BuildContext context, int index) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PlantWidget(index: index,)));
  }

  Widget _itemThumbnail(PlantModel item) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0, height: 300.0),
      child: Image.network(
        item.imageUrl,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _itemTitle(PlantModel item) {
    return Text(
      item.name,
      style: PlantStyles.headerLarge,
    );
  }
}
