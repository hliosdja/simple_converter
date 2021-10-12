class Speed {
  String convertSpeed(
      {required String unit1, required double input, required String unit2}) {
    if
        //Foot per second
        (unit1 == 'Foot per second' && unit2 == 'Meter per second') {
      return (input / 3.281).toStringAsFixed(20);
    } else if (unit1 == 'Foot per second' && unit2 == 'Kilometer per hour') {
      return (input * 1.097).toStringAsFixed(20);
    } else if (unit1 == 'Foot per second' && unit2 == 'Miles per hour') {
      return (input / 1.467).toStringAsFixed(20);
    } else if (unit1 == 'Foot per second' && unit2 == 'Knot') {
      return (input / 1.688).toStringAsFixed(20);
    }
    //Meter per second
    else if (unit1 == 'Meter per second' && unit2 == 'Foot per second') {
      return (input * 3.281).toStringAsFixed(20);
    } else if (unit1 == 'Meter per second' && unit2 == 'Kilometer per hour') {
      return (input * 3.6).toStringAsFixed(20);
    } else if (unit1 == 'Meter per second' && unit2 == 'Miles per hour') {
      return (input * 2.237).toStringAsFixed(20);
    } else if (unit1 == 'Meter per second' && unit2 == 'Knot') {
      return (input * 1.1944).toStringAsFixed(20);
    }
    //Kilometer per hour
    else if (unit1 == 'Kilometer per hour' && unit2 == 'Foot per second') {
      return (input / 1.097).toStringAsFixed(20);
    } else if (unit1 == 'Kilometer per hour' && unit2 == 'Meter per second') {
      return (input / 3.6).toStringAsFixed(20);
    } else if (unit1 == 'Kilometer per hour' && unit2 == 'Miles per hour') {
      return (input / 1.609).toStringAsFixed(20);
    } else if (unit1 == 'Kilometer per hour' && unit2 == 'Knot') {
      return (input / 1.852).toStringAsFixed(20);
    }
    //Miles per hour
    else if (unit1 == 'Miles per hour' && unit2 == 'Foot per second') {
      return (input * 1.467).toStringAsFixed(20);
    } else if (unit1 == 'Miles per hour' && unit2 == 'Meter per second') {
      return (input / 2.237).toStringAsFixed(20);
    } else if (unit1 == 'Miles per hour' && unit2 == 'Kilometer per hour') {
      return (input * 1.609).toStringAsFixed(20);
    } else if (unit1 == 'Miles per hour' && unit2 == 'Knot') {
      return (input / 1.151).toStringAsFixed(20);
    }
    //Knot
    else if (unit1 == 'Knot' && unit2 == 'Foot per second') {
      return (input * 1.688).toStringAsFixed(20);
    } else if (unit1 == 'Knot' && unit2 == 'Meter per second') {
      return (input / 1.944).toStringAsFixed(20);
    } else if (unit1 == 'Knot' && unit2 == 'Kilometer per hour') {
      return (input * 1.852).toStringAsFixed(20);
    } else if (unit1 == 'Knot' && unit2 == 'Miles per hour') {
      return (input * 1.151).toStringAsFixed(20);
    }
    //deafult
    else {
      return input.toStringAsFixed(20);
    }
  }
}
