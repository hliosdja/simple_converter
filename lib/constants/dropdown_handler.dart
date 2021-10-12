import 'package:flutter/material.dart';
import 'package:simple_converter/constants/units.dart';

class DropdownGenerator {
  Iterable<DropdownMenuItem> createLengthitems() {
    return lengthUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  Iterable<DropdownMenuItem> createTemperatureItems() {
    return temperatureUnits.map((String value) {
      print(value);
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  Iterable<DropdownMenuItem> createMassItems() {
    return massUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  Iterable<DropdownMenuItem> createSpeedItems() {
    return speedUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  Iterable<DropdownMenuItem> createFrequencyItems() {
    return frequencyUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }

  Iterable<DropdownMenuItem> createStorageItems() {
    return storageUnits.map((String value) {
      return DropdownMenuItem(
        child: Text(value),
        value: value,
      );
    });
  }
}
