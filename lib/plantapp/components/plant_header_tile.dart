

import 'package:flutter/cupertino.dart';
import 'package:fluttertutorial/models/plant_model.dart';
import 'package:fluttertutorial/styles.dart';

const plantTileHeight = 100.0;

class PlantHeaderTile extends StatelessWidget {
  final PlantModel plant;
  final bool darkTheme;

  const PlantHeaderTile({Key? key, required this.plant, required this.darkTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = plant.name.toUpperCase();
    final id = plant.plantId.toUpperCase();
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: darkTheme ? PlantStyles.plantTileTitleDark : PlantStyles.plantTileTitleLight,
          ),
          Text(
            id,
            overflow: TextOverflow.ellipsis,
            style: darkTheme ? PlantStyles.plantTileInfoDark : PlantStyles.plantTileInfoLight,
          ),
        ],
      ),
    );
  }
}
