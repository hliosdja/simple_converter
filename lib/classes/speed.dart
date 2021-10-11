class Speed {
  String convertSpeed(
      {required String unit1, required double input, required String unit2}) {
    if
        //Foot per second
        (unit1 == 'Foot per second' && unit2 == 'Meter per second') {
      return (input / 3.281).toStringAsPrecision(2);
    } else if (unit1 == 'Foot per second' && unit2 == 'Kilometer per hour') {
      return (input * 1.097).toStringAsPrecision(2);
    } else if (unit1 == 'Foot per second' && unit2 == 'Miles per hour') {
      return (input / 1.467).toStringAsPrecision(2);
    } else if (unit1 == 'Foot per second' && unit2 == 'Knot') {
      return (input / 1.688).toStringAsPrecision(2);
    }
    //Meter per second
    else if (unit1 == 'Meter per second' && unit2 == 'Foot per second') {
      return (input * 3.281).toStringAsPrecision(2);
    } else if (unit1 == 'Meter per second' && unit2 == 'Kilometer per hour') {
      return (input * 3.6).toStringAsPrecision(2);
    } else if (unit1 == 'Meter per second' && unit2 == 'Miles per hour') {
      return (input * 2.237).toStringAsPrecision(2);
    } else if (unit1 == 'Meter per second' && unit2 == 'Knot') {
      return (input * 1.1944).toStringAsPrecision(2);
    }
    //Kilometer per hour
    else if (unit1 == 'Kilometer per hour' && unit2 == 'Foot per second') {
      return (input / 1.097).toStringAsPrecision(2);
    } else if (unit1 == 'Kilometer per hour' && unit2 == 'Meter per second') {
      return (input / 3.6).toStringAsPrecision(2);
    } else if (unit1 == 'Kilometer per hour' && unit2 == 'Miles per hour') {
      return (input / 1.609).toStringAsPrecision(2);
    } else if (unit1 == 'Kilometer per hour' && unit2 == 'Knot') {
      return (input / 1.852).toStringAsPrecision(2);
    }
    //Miles per hour
    else if (unit1 == 'Miles per hour' && unit2 == 'Foot per second') {
      return (input * 1.467).toStringAsPrecision(2);
    } else if (unit1 == 'Miles per hour' && unit2 == 'Meter per second') {
      return (input / 2.237).toStringAsPrecision(2);
    } else if (unit1 == 'Miles per hour' && unit2 == 'Kilometer per hour') {
      return (input * 1.609).toStringAsPrecision(2);
    } else if (unit1 == 'Miles per hour' && unit2 == 'Knot') {
      return (input / 1.151).toStringAsPrecision(2);
    }
    //Knot
    else if (unit1 == 'Knot' && unit2 == 'Foot per second') {
      return (input * 1.688).toStringAsPrecision(2);
    } else if (unit1 == 'Knot' && unit2 == 'Meter per second') {
      return (input / 1.944).toStringAsPrecision(2);
    } else if (unit1 == 'Knot' && unit2 == 'Kilometer per hour') {
      return (input * 1.852).toStringAsPrecision(2);
    } else if (unit1 == 'Knot' && unit2 == 'Miles per hour') {
      return (input * 1.151).toStringAsPrecision(2);
    }
    //deafult
    else {
      return input.toStringAsPrecision(2);
    }
  }
}
