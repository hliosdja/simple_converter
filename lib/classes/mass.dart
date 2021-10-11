class Mass {
  String convertMass(
      {required String unit1, required double input, required String unit2}) {
    if
        //Miligram
        (unit1 == 'Miligram' && unit2 == 'Gram') {
      return (input / 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Miligram' && unit2 == 'Kilogram') {
      return (input / 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Miligram' && unit2 == 'Tonne') {
      return (input / 1000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Miligram' && unit2 == 'Ounce') {
      return (input / 28350).toStringAsPrecision(2);
    }
    //Gram
    else if (unit1 == 'Gram' && unit2 == 'Miligram') {
      return (input * 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Gram' && unit2 == 'Kilogram') {
      return (input / 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Gram' && unit2 == 'Tonne') {
      return (input / 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Gram' && unit2 == 'Ounce') {
      return (input / 28.35).toStringAsPrecision(2);
    }
    //Kilogram
    else if (unit1 == 'Kilogram' && unit2 == 'Miligram') {
      return (input * 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Kilogram' && unit2 == 'Gram') {
      return (input * 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Kilogram' && unit2 == 'Tonne') {
      return (input / 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Kilogram' && unit2 == 'Ounce') {
      return (input / 35.274).toStringAsPrecision(2);
    }
    //Tonne
    else if (unit1 == 'Tonne' && unit2 == 'Miligram') {
      return (input * 1000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Tonne' && unit2 == 'Gram') {
      return (input * 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Tonne' && unit2 == 'Kilogram') {
      return (input * 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Tonne' && unit2 == 'Ounce') {
      return (input * 35274).toStringAsPrecision(2);
    }
    //Ounce
    else if (unit1 == 'Ounce' && unit2 == 'Miligram') {
      return (input * 28350).toStringAsPrecision(2);
    } else if (unit1 == 'Ounce' && unit2 == 'Gram') {
      return (input * 28.35).toStringAsPrecision(2);
    } else if (unit1 == 'Ounce' && unit2 == 'Kilogram') {
      return (input / 35.274).toStringAsPrecision(2);
    } else if (unit1 == 'Ounce' && unit2 == 'Tonne') {
      return (input / 35274).toStringAsPrecision(2);
    } else {
      return input.toStringAsPrecision(2);
    }
  }
}
