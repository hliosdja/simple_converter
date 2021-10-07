import 'package:flutter/material.dart';
import 'package:simple_converter/classes/length.dart';

Length length = Length();

class ConverterCalculator {
  String convert(
      {required String unitOfMeasure,
      required String input,
      required String unit1,
      required String unit2}) {
    double conversionInput = double.parse(input);
    String output;
    if (input == '') {
      output = '';
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
    switch (unitOfmeasure) {
      case 'Length':
        return length.convertLength(
            unit1: topUnit, input: input, unit2: bottomUnit);
      default:
        return '';
    }
  }
}
