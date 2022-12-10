import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertutorial/models/plant_model.dart';
import 'package:fluttertutorial/plantapp/components/plant_app_bar.dart';
import 'package:fluttertutorial/plantapp/components/plant_banner_image.dart';
import 'package:fluttertutorial/plantapp/components/plant_footer_tile.dart';
import 'package:fluttertutorial/plantapp/components/plant_header_tile.dart';
import 'package:fluttertutorial/plantapp/plant_widget.dart';
import 'package:fluttertutorial/styles.dart';

const listItemHeight = 250.0;
class PlantListWidget extends StatefulWidget {
  const PlantListWidget({Key? key}) : super(key: key);

  @override
  State<PlantListWidget> createState() => _PlantListWidgetState();
}

class _PlantListWidgetState extends State<PlantListWidget> {
  List<PlantModel> plants = [];
  bool loading = false;

  @override
  void initState(){
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlantAppBar(),
      body: RefreshIndicator(
        onRefresh: loadData,
        child: Column(
          children: [
            _renderProgressBar(context),
            _renderListView(context)
          ],
        ),
      )
    );
  }

  Widget _renderProgressBar(BuildContext context){
    return (loading ? const LinearProgressIndicator(
      value: null,
      backgroundColor: Colors.white,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),) : Container());
  }

  Widget _renderListView(BuildContext context){
    return Expanded(child:
    ListView.builder(
        itemCount: plants.length,
        itemBuilder: _listViewItemBuilder),
    );
  }

  Future<void> loadData() async {
    if(mounted){
      setState(()=> loading = true);
      final plantList = await PlantModel.fetchAllPlants();
      // setState will call build function each time when data is updated..
      setState(() {
        plants = plantList;
        loading = false;
      });
    }
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var plant = plants[index];
    return GestureDetector(
      onTap: () => _navigateToPlantDetailPage(context, index),
      child: SizedBox(
          height: listItemHeight,
          child: Stack(
            children: [
              PlantBannerImage(url: plant.imageUrl, height: listItemHeight),
              _tileHeader(plant),
              _tileFooter(plant),
            ],
          )
      ),
    );
  }

  void _navigateToPlantDetailPage(BuildContext context, int index) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PlantWidget(index: index,)));
  }

  Widget _itemThumbnail(PlantModel item) {
    return Container(
      constraints: const BoxConstraints.tightFor(width: 100.0, height: 300.0),
      child: Image.network(
        item.imageUrl,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _tileHeader(PlantModel plant){
    final header = PlantHeaderTile(plant: plant, darkTheme: true);
    final overlay =  Container(
      height: 80.0,
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: PlantStyles.horizontalPaddingDefault),
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
      child: header,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        overlay,
      ],
    );
  }

  Widget _tileFooter(PlantModel plant){
    final footer = PlantFooterTile(plant: plant, darkTheme: true);
    final overlay =  Container(
      width: 180.0,
      height: 50.0,
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: PlantStyles.horizontalPaddingDefault),
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
      child: footer,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        overlay
      ],
    );
  }

  Widget _itemTitle(PlantModel item) {
    return Text(
      item.name,
      style: PlantStyles.headerLarge,
    );
  }
}
