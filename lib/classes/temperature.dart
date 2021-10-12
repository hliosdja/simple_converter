class Temperature {
  String convertTemperature(
      {required String unit1, required double input, required String unit2}) {
    if
        //Celsius
        (unit1 == 'Celsius' && unit2 == 'Fahrenheit') {
      print('entered Celsius condition');
      return ((input * 9 / 5) + 32).toString();
    } else if (unit1 == 'Celsius' && unit2 == 'Kelvin') {
      print('entered Celsius condition');
      return (input + 273.15).toString();
    }
    //Fahrenheit
    else if (unit1 == 'Fahrenheit' && unit2 == 'Celsius') {
      print('entered Fahrenheit condition');
      return ((input - 32) * 5 / 9).toString();
    } else if (unit1 == 'Fahrenheit' && unit2 == 'Kelvin') {
      print('entered Fahrenheit condition');
      return ((input - 32) * 5 / 9 + 273.15).toString();
    }
    //Kelvin
    else if (unit1 == 'Kelvin' && unit2 == 'Celsius') {
      print('entered Kelvin condition');
      return (input - 273.15).toString();
    } else if (unit1 == 'Kelvin' && unit2 == 'Fahrenheit') {
      print('entered Kelvin condition');
      return ((input - 273.15) * 9 / 5 + 32).toString();
    }
    //default
    else {
      print('entered default condition');
      return input.toString();
    }
  }
}
