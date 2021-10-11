class Storage {
  String convertStorage(
      {required String unit1, required double input, required String unit2}) {
    if
        //Byte
        (unit1 == 'Byte' && unit2 == 'Kilobyte') {
      return (input / 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Byte' && unit2 == 'Megabyte') {
      return (input / 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Byte' && unit2 == 'Gigabyte') {
      return (input / 1000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Byte' && unit2 == 'Terabyte') {
      return (input / 1000000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Byte' && unit2 == 'Petabyte') {
      return (input / 1000000000000000).toStringAsPrecision(2);
    }
    //Kilobyte
    else if (unit1 == 'Kilobyte' && unit2 == 'Byte') {
      return (input * 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Kilobyte' && unit2 == 'Megabyte') {
      return (input / 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Kilobyte' && unit2 == 'Gigabyte') {
      return (input / 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Kilobyte' && unit2 == 'Terabyte') {
      return (input / 1000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Kilobyte' && unit2 == 'Petabyte') {
      return (input / 1000000000000).toStringAsPrecision(2);
    }
    //Megabyte
    else if (unit1 == 'Megabyte' && unit2 == 'Byte') {
      return (input * 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Megabyte' && unit2 == 'Kilobyte') {
      return (input * 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Megabyte' && unit2 == 'Gigabyte') {
      return (input / 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Megabyte' && unit2 == 'Terabyte') {
      return (input / 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Megabyte' && unit2 == 'Petabyte') {
      return (input / 1000000000).toStringAsPrecision(2);
    }
    //Gigabyte
    else if (unit1 == 'Gigabyte' && unit2 == 'Byte') {
      return (input * 1000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Gigabyte' && unit2 == 'Kilobyte') {
      return (input * 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Gigabyte' && unit2 == 'Megabyte') {
      return (input * 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Gigabyte' && unit2 == 'Terabyte') {
      return (input / 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Gigabyte' && unit2 == 'Petabyte') {
      return (input / 1000000).toStringAsPrecision(2);
    }
    //Terabyte
    else if (unit1 == 'Terabyte' && unit2 == 'Byte') {
      return (input * 1000000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Terabyte' && unit2 == 'Kilobyte') {
      return (input * 1000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Terabyte' && unit2 == 'Megabyte') {
      return (input * 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Terabyte' && unit2 == 'Gigabyte') {
      return (input * 1000).toStringAsPrecision(2);
    } else if (unit1 == 'Terabyte' && unit2 == 'Petabyte') {
      return (input / 1000).toStringAsPrecision(2);
    }
    //Petabyte
    else if (unit1 == 'Petabyte' && unit2 == 'Byte') {
      return (input * 1000000000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Petabyte' && unit2 == 'Kilobyte') {
      return (input * 1000000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Petabyte' && unit2 == 'Megabyte') {
      return (input * 1000000000).toStringAsPrecision(2);
    } else if (unit1 == 'Petabyte' && unit2 == 'Gigabyte') {
      return (input * 1000000).toStringAsPrecision(2);
    } else if (unit1 == 'Petabyte' && unit2 == 'Terabyte') {
      return (input * 1000).toStringAsPrecision(2);
    } else {
      return input.toStringAsPrecision(2);
    }
  }
}
