class Frequency {
  String convertFrequency(
      {required String unit1, required double input, required unit2}) {
    if
        //Hertz
        (unit1 == 'Hertz' && unit2 == 'Kilohertz') {
      return (input / 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Hertz' && unit2 == 'Megahertz') {
      return (input / 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Hertz' && unit2 == 'Gigahertz') {
      return (input / 1000000000).toStringAsPrecision(2);
    }
    //Kilohertz
    else if (unit1 == 'Kilohertz' && unit2 == 'Hertz') {
      return (input * 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Kilohertz' && unit2 == 'Megahertz') {
      return (input / 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Kilohertz' && unit2 == 'Gigahertz') {
      return (input / 1000000).toStringAsPrecision(2);
    }
    //Megahertz
    else if (unit1 == 'Megahertz' && unit2 == 'Hertz') {
      return (input * 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Megahertz' && unit2 == 'Kilohertz') {
      return (input * 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Megahertz' && unit2 == 'Gigahertz') {
      return (input / 1000).toStringAsPrecision(2);
    }
    //Gigahertz
    else if (unit1 == 'Gigahertz' && unit2 == 'Hertz') {
      return (input * 1000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Gigahertz' && unit2 == 'Kilohertz') {
      return (input * 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Gigahertz' && unit2 == 'Megahertz') {
      return (input * 1000).toStringAsPrecision(2);
    }
    //default
    else {
      return input.toStringAsPrecision(2);
    }
  }
}
