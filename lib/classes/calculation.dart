import 'package:flutter/material.dart';
import 'package:simple_converter/classes/length.dart';
import 'package:simple_converter/classes/storage.dart';
import 'package:simple_converter/classes/temperature.dart';
import 'package:simple_converter/classes/mass.dart';
import 'package:simple_converter/classes/speed.dart';
import 'package:simple_converter/classes/frequency.dart';

Length length = Length();
Temperature temp = Temperature();
Mass mass = Mass();
Speed speed = Speed();
Frequency frequency = Frequency();
Storage storage = Storage();

class ConverterCalculator {
  String convert(
      {required String unitOfMeasure,
      required String input,
      required String unit1,
      required String unit2}) {
    double conversionInput;
    if (input.isEmpty) {
      print('it is empty');
      return input;
    } else {
      print('double parsed');
      conversionInput = double.parse(input);
    }

    debugPrint('convert function called');
    return computeConversion(
        unitOfmeasure: unitOfMeasure,
        topUnit: unit1,
        input: conversionInput,
        bottomUnit: unit2);
  }

  String computeConversion(
      {required String unitOfmeasure,
      required String topUnit,
      required double input,
      required String bottomUnit}) {
    debugPrint('computeConvert function called');
    print(input);
    switch (unitOfmeasure) {
      case 'Length':
        return length.convertLength(
            unit1: topUnit, input: input, unit2: bottomUnit);
      case 'Temperature':
        return temp.convertTemperature(
            unit1: topUnit, input: input, unit2: bottomUnit);
      case 'Mass':
        return mass.convertMass(
            unit1: topUnit, input: input, unit2: bottomUnit);
      case 'Speed':
        return speed.convertSpeed(
            unit1: topUnit, input: input, unit2: bottomUnit);
      case 'Frequency':
        return frequency.convertFrequency(
            unit1: topUnit, input: input, unit2: bottomUnit);
      default:
        return storage.convertStorage(
            unit1: topUnit, input: input, unit2: bottomUnit);
    }
  }
}
