
import 'package:json_annotation/json_annotation.dart';

/// This allows the `PlantModel` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'plant_model.g.dart';


/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class PlantModel{
  late final String plantId;
  late final String name;
  late final String description;
  /// Tell json_serializable to use "defaultValue" if the JSON doesn't
  /// contain this key or if the value is `null`.
  @JsonKey(defaultValue: 0)
  late final int growZoneNumber;
  @JsonKey(defaultValue: 1)
  late final int wateringInterval;
  late final String imageUrl;

  PlantModel(this.plantId, this.name, this.description, this.growZoneNumber, this.wateringInterval, this.imageUrl);

  /// A necessary factory constructor for creating a new PlantModel instance
  /// from a map. Pass the map to the generated `_$PlantModelFromJson()` constructor.
  /// The constructor is named after the source class, in this case, PlantModel.
  factory PlantModel.fromJson(Map<String, dynamic> json) => _$PlantModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$PlantModelToJson`.
  Map<String, dynamic> toJson() => _$PlantModelToJson(this);
}

