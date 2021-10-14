import 'package:flutter/material.dart';
import 'package:simple_converter/constants/units.dart';

class DropdownGenerator {
  //length
  Iterable<DropdownMenuItem> createLengthitems() {
    return lengthUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  //temp
  Iterable<DropdownMenuItem> createTemperatureItems() {
    return temperatureUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  //mass
  Iterable<DropdownMenuItem> createMassItems() {
    return massUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  //speed
  Iterable<DropdownMenuItem> createSpeedItems() {
    return speedUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  //frequency
  Iterable<DropdownMenuItem> createFrequencyItems() {
    return frequencyUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  //storage
  Iterable<DropdownMenuItem> createStorageItems() {
    return storageUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }
}
