

import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertutorial/mocks/mock_plants.dart';
import 'package:fluttertutorial/models/plant_model.dart';

final fetchAnyPlant = MockPlants.FetchAny();
final fetchAllPlants = MockPlants.FetchAll();
final fetchPlantsWithThirdIndex = MockPlants.FetchItemByIndex(3);

void main(){

  test("Write Your Test Description Name - testing Plants With 3rd Index", () {
    // Write your Test here ..
    expect(
      // actual Value
      fetchPlantsWithThirdIndex,
      // expected - matchers
      isNotNull
    );
    expect(fetchAnyPlant, isNotNull);
    expect(fetchAnyPlant.name, isNotEmpty);

    // Common Matchers
    // Class -- Start
    // TypeMatcher<T> : matchers the type of the given Object
    expect(fetchAnyPlant, TypeMatcher<PlantModel>());
    // TypeMatcher<T> : matchers if the object is a List
    expect(fetchAllPlants, TypeMatcher<List>());
    // Class -- End

    // Constants -- Start
    // anything matches any values
    expect(fetchAnyPlant.name, anything);
    // isEmpty matches if the property is empty
    expect("", isEmpty);
    // isNotEmpty matches if the property is not empty
    expect(fetchAnyPlant.name, isNotEmpty);
    // isFalse matches if the property is false
    expect(fetchAnyPlant.name.length > 100 , isFalse);
    // isTrue matches if the property is true
    expect(fetchAnyPlant.name.length < 20 , isTrue);
    // matches if the object is a List
    expect(fetchAnyPlant.facts, TypeMatcher<List>());
    // isNonNegative matches if the argument is zero or positive
    expect(fetchAnyPlant.facts.length, isNonNegative);
    // isNotNull matches if object is not null
    expect(fetchAnyPlant, isNotNull);
    // Constants -- End

    // Function -- Start
    // Returns a matcher that matches if the match argument is a string and starts with prefixString
    expect(fetchAnyPlant.name, startsWith("A"));
    // Returns a matches that matches if the value is the same instance as expected, using identical.
    expect(fetchAnyPlant.name, same("Apple"));
    // Returns a matcher which matches if the match argument is less than or equal to the given value.
    expect(fetchAnyPlant.facts.length, lessThanOrEqualTo(10));
    // Returns a matcher that matches if the match argument contains the expected value.
    expect(fetchAnyPlant.name, contains("Apple"));
  });

  test("test description- FetchAny() method", () {
      expect(fetchAnyPlant, isNotNull);
      expect(fetchAnyPlant.name, isNotEmpty);
  });

  test("test - FetchAll() method", () {
    expect(fetchAllPlants, isNotNull);
    expect(fetchAllPlants.length > 0 , isTrue);
  });
}