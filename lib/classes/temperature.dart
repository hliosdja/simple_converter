class Temperature {
  String convertTemperature(
      {required String unit1, required double input, required String unit2}) {
    if
        //Celsius
        (unit1 == 'Celsius' && unit2 == 'Fahrenheit') {
      return ((input * 9 / 5) + 32).toString();
    } else if (unit1 == 'Celsius' && unit2 == 'Kelvin') {
      return (input + 273.15).toString();
    }
    //Fahrenheit
    else if (unit1 == 'Fahrenheit' && unit2 == 'Celsius') {
      return ((input - 32) * 5 / 9).toString();
    } else if (unit1 == 'Fahrenheit' && unit2 == 'Kelvin') {
      return ((input - 32) * 5 / 9 + 273.15).toString();
    }
    //Kelvin
    else if (unit1 == 'Kelvin' && unit2 == 'Celsius') {
      return (input - 273.15).toString();
    } else if (unit1 == 'Kelvin' && unit2 == 'Fahrenheit') {
      return ((input - 273.15) * 9 / 5 + 32).toString();
    }
    //default
    else {
      return input.toString();
    }
  }
}
