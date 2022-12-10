

import 'package:flutter/cupertino.dart';
import 'package:fluttertutorial/models/plant_model.dart';
import 'package:fluttertutorial/styles.dart';

class PlantFooterTile extends StatelessWidget {
  final PlantModel plant;
  final bool darkTheme;

  const PlantFooterTile({Key? key, required this.plant, required this.darkTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final growZone = plant.growZoneNumber;
    final wateringLevel = plant.wateringInterval;
    return Container(
      padding: EdgeInsets.all(0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("GROW ZONE: $growZone",
            maxLines: 1,
            style: darkTheme? PlantStyles.plantTileSubtitleDark: PlantStyles.plantTileSubtitleLight,
          ),
          Text("WATERING INTERVAL: $wateringLevel",
            maxLines: 1,
            style: darkTheme? PlantStyles.plantTileSubtitleDark: PlantStyles.plantTileSubtitleLight,
          ),
        ],
      ),
    );
  }
}
