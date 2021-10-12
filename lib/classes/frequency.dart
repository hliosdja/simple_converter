class Frequency {
  String convertFrequency(
      {required String unit1, required double input, required unit2}) {
    if
        //Hertz
        (unit1 == 'Hertz' && unit2 == 'Kilohertz') {
      return (input / 1000).toString();
    } else if (unit1 == 'Hertz' && unit2 == 'Megahertz') {
      return (input / 1000000).toString();
    } else if (unit1 == 'Hertz' && unit2 == 'Gigahertz') {
      return (input / 1000000000).toString();
    }
    //Kilohertz
    else if (unit1 == 'Kilohertz' && unit2 == 'Hertz') {
      return (input * 1000).toString();
    } else if (unit1 == 'Kilohertz' && unit2 == 'Megahertz') {
      return (input / 1000).toString();
    } else if (unit1 == 'Kilohertz' && unit2 == 'Gigahertz') {
      return (input / 1000000).toString();
    }
    //Megahertz
    else if (unit1 == 'Megahertz' && unit2 == 'Hertz') {
      return (input * 1000000).toString();
    } else if (unit1 == 'Megahertz' && unit2 == 'Kilohertz') {
      return (input * 1000).toString();
    } else if (unit1 == 'Megahertz' && unit2 == 'Gigahertz') {
      return (input / 1000).toString();
    }
    //Gigahertz
    else if (unit1 == 'Gigahertz' && unit2 == 'Hertz') {
      return (input * 1000000000).toString();
    } else if (unit1 == 'Gigahertz' && unit2 == 'Kilohertz') {
      return (input * 1000000).toString();
    } else if (unit1 == 'Gigahertz' && unit2 == 'Megahertz') {
      return (input * 1000).toString();
    }
    //default
    else {
      return input.toString();
    }
  }
}
