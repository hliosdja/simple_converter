class Storage {
  String convertStorage(
      {required String unit1, required double input, required String unit2}) {
    if
        //Byte
        (unit1 == 'Byte' && unit2 == 'Kilobyte') {
      return (input / 1000).toString();
    } else if (unit1 == 'Byte' && unit2 == 'Megabyte') {
      return (input / 1000000).toString();
    } else if (unit1 == 'Byte' && unit2 == 'Gigabyte') {
      return (input / 1000000000).toString();
    } else if (unit1 == 'Byte' && unit2 == 'Terabyte') {
      return (input / 1000000000000).toString();
    } else if (unit1 == 'Byte' && unit2 == 'Petabyte') {
      return (input / 1000000000000000).toString();
    }
    //Kilobyte
    else if (unit1 == 'Kilobyte' && unit2 == 'Byte') {
      return (input * 1000).toString();
    } else if (unit1 == 'Kilobyte' && unit2 == 'Megabyte') {
      return (input / 1000).toString();
    } else if (unit1 == 'Kilobyte' && unit2 == 'Gigabyte') {
      return (input / 1000000).toString();
    } else if (unit1 == 'Kilobyte' && unit2 == 'Terabyte') {
      return (input / 1000000000).toString();
    } else if (unit1 == 'Kilobyte' && unit2 == 'Petabyte') {
      return (input / 1000000000000).toString();
    }
    //Megabyte
    else if (unit1 == 'Megabyte' && unit2 == 'Byte') {
      return (input * 1000000).toString();
    } else if (unit1 == 'Megabyte' && unit2 == 'Kilobyte') {
      return (input * 1000).toString();
    } else if (unit1 == 'Megabyte' && unit2 == 'Gigabyte') {
      return (input / 1000).toString();
    } else if (unit1 == 'Megabyte' && unit2 == 'Terabyte') {
      return (input / 1000000).toString();
    } else if (unit1 == 'Megabyte' && unit2 == 'Petabyte') {
      return (input / 1000000000).toString();
    }
    //Gigabyte
    else if (unit1 == 'Gigabyte' && unit2 == 'Byte') {
      return (input * 1000000000).toString();
    } else if (unit1 == 'Gigabyte' && unit2 == 'Kilobyte') {
      return (input * 1000000).toString();
    } else if (unit1 == 'Gigabyte' && unit2 == 'Megabyte') {
      return (input * 1000).toString();
    } else if (unit1 == 'Gigabyte' && unit2 == 'Terabyte') {
      return (input / 1000).toString();
    } else if (unit1 == 'Gigabyte' && unit2 == 'Petabyte') {
      return (input / 1000000).toString();
    }
    //Terabyte
    else if (unit1 == 'Terabyte' && unit2 == 'Byte') {
      return (input * 1000000000000).toString();
    } else if (unit1 == 'Terabyte' && unit2 == 'Kilobyte') {
      return (input * 1000000000).toString();
    } else if (unit1 == 'Terabyte' && unit2 == 'Megabyte') {
      return (input * 1000000).toString();
    } else if (unit1 == 'Terabyte' && unit2 == 'Gigabyte') {
      return (input * 1000).toString();
    } else if (unit1 == 'Terabyte' && unit2 == 'Petabyte') {
      return (input / 1000).toString();
    }
    //Petabyte
    else if (unit1 == 'Petabyte' && unit2 == 'Byte') {
      return (input * 1000000000000000).toString();
    } else if (unit1 == 'Petabyte' && unit2 == 'Kilobyte') {
      return (input * 1000000000000).toString();
    } else if (unit1 == 'Petabyte' && unit2 == 'Megabyte') {
      return (input * 1000000000).toString();
    } else if (unit1 == 'Petabyte' && unit2 == 'Gigabyte') {
      return (input * 1000000).toString();
    } else if (unit1 == 'Petabyte' && unit2 == 'Terabyte') {
      return (input * 1000).toString();
    } else {
      return input.toString();
    }
  }
}
