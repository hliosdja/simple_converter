class Mass {
  String convertMass(
      {required String unit1, required double input, required String unit2}) {
    if
        //Miligram
        (unit1 == 'Miligram' && unit2 == 'Gram') {
      return (input / 1000).toString();
    } else if (unit1 == 'Miligram' && unit2 == 'Kilogram') {
      return (input / 1000000).toString();
    } else if (unit1 == 'Miligram' && unit2 == 'Tonne') {
      return (input / 1000000000).toString();
    } else if (unit1 == 'Miligram' && unit2 == 'Ounce') {
      return (input / 28350).toString();
    }
    //Gram
    else if (unit1 == 'Gram' && unit2 == 'Miligram') {
      return (input * 1000).toString();
    } else if (unit1 == 'Gram' && unit2 == 'Kilogram') {
      return (input / 1000).toString();
    } else if (unit1 == 'Gram' && unit2 == 'Tonne') {
      return (input / 1000000).toString();
    } else if (unit1 == 'Gram' && unit2 == 'Ounce') {
      return (input / 28.35).toString();
    }
    //Kilogram
    else if (unit1 == 'Kilogram' && unit2 == 'Miligram') {
      return (input * 1000000).toString();
    } else if (unit1 == 'Kilogram' && unit2 == 'Gram') {
      return (input * 1000).toString();
    } else if (unit1 == 'Kilogram' && unit2 == 'Tonne') {
      return (input / 1000).toString();
    } else if (unit1 == 'Kilogram' && unit2 == 'Ounce') {
      return (input / 35.274).toString();
    }
    //Tonne
    else if (unit1 == 'Tonne' && unit2 == 'Miligram') {
      return (input * 1000000000).toString();
    } else if (unit1 == 'Tonne' && unit2 == 'Gram') {
      return (input * 1000000).toString();
    } else if (unit1 == 'Tonne' && unit2 == 'Kilogram') {
      return (input * 1000).toString();
    } else if (unit1 == 'Tonne' && unit2 == 'Ounce') {
      return (input * 35274).toString();
    }
    //Ounce
    else if (unit1 == 'Ounce' && unit2 == 'Miligram') {
      return (input * 28350).toString();
    } else if (unit1 == 'Ounce' && unit2 == 'Gram') {
      return (input * 28.35).toString();
    } else if (unit1 == 'Ounce' && unit2 == 'Kilogram') {
      return (input / 35.274).toString();
    } else if (unit1 == 'Ounce' && unit2 == 'Tonne') {
      return (input / 35274).toString();
    } else {
      return input.toString();
    }
  }
}
