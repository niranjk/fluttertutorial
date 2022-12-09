// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlantModel _$PlantModelFromJson(Map<String, dynamic> json) => PlantModel(
      json['plantId'] as String,
      json['name'] as String,
      json['description'] as String,
      json['growZoneNumber'] as int? ?? 0,
      json['wateringInterval'] as int? ?? 1,
      json['imageUrl'] as String,
    );

Map<String, dynamic> _$PlantModelToJson(PlantModel instance) =>
    <String, dynamic>{
      'plantId': instance.plantId,
      'name': instance.name,
      'description': instance.description,
      'growZoneNumber': instance.growZoneNumber,
      'wateringInterval': instance.wateringInterval,
      'imageUrl': instance.imageUrl,
    };
