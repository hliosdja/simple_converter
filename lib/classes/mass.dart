class Mass {
  String convertMass(
      {required String unit1, required double input, required String unit2}) {
    if
        //Miligram
        (unit1 == 'Miligram' && unit2 == 'Gram') {
      return (input / 1000).toStringAsFixed(20);
    } else if (unit1 == 'Miligram' && unit2 == 'Kilogram') {
      return (input / 1000000).toStringAsFixed(20);
    } else if (unit1 == 'Miligram' && unit2 == 'Tonne') {
      return (input / 1000000000).toStringAsFixed(20);
    } else if (unit1 == 'Miligram' && unit2 == 'Ounce') {
      return (input / 28350).toStringAsFixed(20);
    }
    //Gram
    else if (unit1 == 'Gram' && unit2 == 'Miligram') {
      return (input * 1000).toStringAsFixed(20);
    } else if (unit1 == 'Gram' && unit2 == 'Kilogram') {
      return (input / 1000).toStringAsFixed(20);
    } else if (unit1 == 'Gram' && unit2 == 'Tonne') {
      return (input / 1000000).toStringAsFixed(20);
    } else if (unit1 == 'Gram' && unit2 == 'Ounce') {
      return (input / 28.35).toStringAsFixed(20);
    }
    //Kilogram
    else if (unit1 == 'Kilogram' && unit2 == 'Miligram') {
      return (input * 1000000).toStringAsFixed(20);
    } else if (unit1 == 'Kilogram' && unit2 == 'Gram') {
      return (input * 1000).toStringAsFixed(20);
    } else if (unit1 == 'Kilogram' && unit2 == 'Tonne') {
      return (input / 1000).toStringAsFixed(20);
    } else if (unit1 == 'Kilogram' && unit2 == 'Ounce') {
      return (input / 35.274).toStringAsFixed(20);
    }
    //Tonne
    else if (unit1 == 'Tonne' && unit2 == 'Miligram') {
      return (input * 1000000000).toStringAsFixed(20);
    } else if (unit1 == 'Tonne' && unit2 == 'Gram') {
      return (input * 1000000).toStringAsFixed(20);
    } else if (unit1 == 'Tonne' && unit2 == 'Kilogram') {
      return (input * 1000).toStringAsFixed(20);
    } else if (unit1 == 'Tonne' && unit2 == 'Ounce') {
      return (input * 35274).toStringAsFixed(20);
    }
    //Ounce
    else if (unit1 == 'Ounce' && unit2 == 'Miligram') {
      return (input * 28350).toStringAsFixed(20);
    } else if (unit1 == 'Ounce' && unit2 == 'Gram') {
      return (input * 28.35).toStringAsFixed(20);
    } else if (unit1 == 'Ounce' && unit2 == 'Kilogram') {
      return (input / 35.274).toStringAsFixed(20);
    } else if (unit1 == 'Ounce' && unit2 == 'Tonne') {
      return (input / 35274).toStringAsFixed(20);
    } else {
      return input.toStringAsFixed(20);
    }
  }
}
