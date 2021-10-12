class Length {
  String convertLength(
      {required String unit1, required double input, required String unit2}) {
    if
        //Milimeter
        (unit1 == 'Milimeter' && unit2 == 'Centimeter') {
      return (input / 10).toString();
    } else if (unit1 == 'Milimeter' && unit2 == 'Meter') {
      return (input / 1000).toString();
    } else if (unit1 == 'Milimeter' && unit2 == 'Kilometer') {
      return (input / 1000000).toString();
    } else if (unit1 == 'Milimeter' && unit2 == 'Mile') {
      return (input / 1609000).toString();
    }
    //Centimeter
    else if (unit1 == 'Centimeter' && unit2 == 'Milimeter') {
      return (input * 10).toString();
    } else if (unit1 == 'Centimeter' && unit2 == 'Meter') {
      return (input / 100).toString();
    } else if (unit1 == 'Centimeter' && unit2 == 'Kilometer') {
      return (input / 100000).toString();
    } else if (unit1 == 'Centimeter' && unit2 == 'Mile') {
      return (input / 160934).toString();
    }
    //Meter
    else if (unit1 == 'Meter' && unit2 == 'Milimeter') {
      return (input * 1000).toString();
    } else if (unit1 == 'Meter' && unit2 == 'Centimeter') {
      return (input * 100).toString();
    } else if (unit1 == 'Meter' && unit2 == 'Kilometer') {
      return (input / 1000).toString();
    } else if (unit1 == 'Meter' && unit2 == 'Mile') {
      return (input / 1609).toString();
    }
    //Kilometer
    else if (unit1 == 'Kilometer' && unit2 == 'Milimeter') {
      return (input * 1000000).toString();
    } else if (unit1 == 'Kilometer' && unit2 == 'Centimeter') {
      return (input * 100000).toString();
    } else if (unit1 == 'Kilometer' && unit2 == 'Meter') {
      return (input * 1000).toString();
    } else if (unit1 == 'Kilometer' && unit2 == 'Mile') {
      return (input / 1.609).toString();
    }
    //Mile
    else if (unit1 == 'Mile' && unit2 == 'Milimeter') {
      return (input * 1609000).toString();
    } else if (unit1 == 'Mile' && unit2 == 'Centimeter') {
      return (input * 160934).toString();
    } else if (unit1 == 'Mile' && unit2 == 'Meter') {
      return (input * 1609).toString();
    } else if (unit1 == 'Mile' && unit2 == 'Kilometer') {
      return (input * 1.609).toString();
    } else {
      return input.toString();
    }
  }
}
