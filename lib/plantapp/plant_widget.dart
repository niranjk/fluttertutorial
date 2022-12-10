import 'package:flutter/material.dart';
import 'package:fluttertutorial/models/plant_model.dart';
import 'package:fluttertutorial/plantapp/components/plant_banner_image.dart';
import 'package:fluttertutorial/plantapp/components/plant_footer_tile.dart';
import 'package:fluttertutorial/plantapp/components/plant_header_tile.dart';
import 'package:url_launcher/url_launcher.dart';

import '../styles.dart';
import 'components/plant_app_bar.dart';

const bannerImageHeight = 300.0;
const bodyVerticalPadding = 5.0;
const buttonHeight = 70.0;

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
      appBar: PlantAppBar(),
      body: Stack(
        children: [
          _renderBody(context, plant),
          _renderButton(context)
        ],
      )
    );
  }

  loadData() async{
     final plantList = await PlantModel.fetchAllPlants();
     setState(() {
       plant = plantList[_index];
     });
  }

  Widget _renderBody( BuildContext context, PlantModel plantModel){
    var result = <Widget>[];
    // First add the image
    result.add(PlantBannerImage(url: plantModel.imageUrl, height: bannerImageHeight));
    // add header
    result.add(_renderHeader());
    // add footer
    result.add(_renderFooter());
    // Add information
    result.addAll(_renderInfo(context, plantModel));
    // Render Bottom Spacer
    result.add(_renderBottomSpacer());
    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: result,
        )
    );
  }

  Widget _renderHeader(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: bodyVerticalPadding, horizontal: PlantStyles.horizontalPaddingDefault),
      child: PlantHeaderTile(plant: plant, darkTheme: false,),
    );
  }

  Widget _renderFooter(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: bodyVerticalPadding, horizontal: PlantStyles.horizontalPaddingDefault),
      child: PlantFooterTile(plant: plant, darkTheme: false,),
    );
  }

  Widget _renderButton(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
          height: buttonHeight,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: _buyButton(context),
          ),
        )
      ],
    );
  }

  Widget _buyButton(BuildContext context){
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width/2, buttonHeight),
        backgroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(vertical: bodyVerticalPadding, horizontal: PlantStyles.horizontalPaddingDefault)
      ),
      onPressed: _handleBuyCTAPressed,
      child: Text("Buy".toUpperCase(), style: PlantStyles.plantTileSubtitleDark,),
    );
  }

  void _handleBuyCTAPressed() async {
    var url = Uri(scheme: 'tel', path: '123');
    if ( await canLaunchUrl(url)){
      await launchUrl(url);
    } else {
      throw "Could not launch $url";
    }
  }

  List<Widget> _renderInfo(BuildContext context, PlantModel plantModel) {
    var result = <Widget>[];
    result.add(_sectionTitle("${plantModel.name} Info"));
    result.add(_sectionInfo(plantModel.description));
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
        padding: const EdgeInsets.fromLTRB(PlantStyles.horizontalPaddingDefault, 20.0, PlantStyles.horizontalPaddingDefault, 20.0),
        child: Text(
            text,
            style: PlantStyles.headerLarge)
    );
  }

  Widget _sectionInfo(String info) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: bodyVerticalPadding, horizontal: PlantStyles.horizontalPaddingDefault),
      child: Text(
        info,
        style: PlantStyles.textDefault,
      ),
    );
  }

  Widget _renderBottomSpacer(){
    return Container(height: buttonHeight,);
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
