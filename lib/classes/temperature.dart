class Temperature {
  String convertTemperature(
      {required String unit1, required double input, required String unit2}) {
    if
        //Celsius
        (unit1 == 'Celsius' && unit2 == 'Fahrenheit') {
      return ((input * 9 / 5) + 32).toStringAsPrecision(2);
    } else if (unit1 == 'Celsius' && unit2 == 'Kelvin') {
      return (input + 273.15).toStringAsPrecision(2);
    }
    //Fahrenheit
    else if (unit1 == 'Fahrenheit' && unit2 == 'Celsius') {
      return ((input - 32) * 5 / 9).toStringAsPrecision(2);
    } else if (unit1 == 'Fahrenheit' && unit2 == 'Kelvin') {
      return ((input - 32) * 5 / 9 + 273.15).toStringAsPrecision(2);
    }
    //Kelvin
    else if (unit1 == 'Kelvin' && unit2 == 'Celsius') {
      return (input - 273.15).toStringAsPrecision(2);
    } else if (unit1 == 'Kelvin' && unit2 == 'Fahrenheit') {
      return ((input - 273.15) * 9 / 5 + 32).toStringAsPrecision(2);
    }
    //default
    else {
      return input.toStringAsPrecision(2);
    }
  }
}
