import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertutorial/models/plant_model.dart';
import 'package:fluttertutorial/plantapp/plant_widget.dart';
import 'package:fluttertutorial/styles.dart';

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
      appBar: AppBar(
        title: const Text(
          "Plants Factory",
          style: PlantStyles.navBarStyle,
        ),
      ),
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
