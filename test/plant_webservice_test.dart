


import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertutorial/models/plant_model.dart';

void main(){
  test("test - decoding of plants json obtained from webservice", (){
    String plantJsonString = '{"plantId":"malus-pumila","name":"Apple","description":"An apple is a sweet, edible fruit produced by an apple tree (Malus pumila).","growZoneNumber": 3,"wateringInterval":30,"imageUrl":"https://upload.wikimedia.org/wikipedia/commons/5/55/Apple_orchard_in_Tasmania.jpg"}';
    //Serializing JSON manually using dart:convert
    Map<String, dynamic> plantMap = jsonDecode(plantJsonString);
    expect("Apple", equals(plantMap['name']));

    final plant = PlantModel.fromJson(plantMap);
    expect(plant.name, plantMap['name']);
    expect(plant.imageUrl, plantMap['imageUrl']);
  });
}