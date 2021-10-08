const List<String> lengthUnits = [
  'Milimeter',
  'Centimeter',
  'Meter',
  'Kilometer',
  'Mile'
];

const List<String> temperatureUnits = ['Celsius', 'Fahrenheit', 'Kelvin'];

const List<String> massUnits = [
  'Miligram',
  'Gram',
  'Kilogram',
  'Tonne',
  'Ounce'
];

const List<String> speedUnits = [
  'Foot per second',
  'Meter per second',
  'Kilometer per hour',
  'Miles per hour',
  'Knot'
];

const List<String> frequencyUnits = [
  'Hertz',
  'Kilohertz',
  'Megahertz',
  'Gigahertz'
];

const List<String> storageUnits = [
  'Bit',
  'Kilobit',
  'Megabit',
  'Gigabit',
  'Terabit',
  'Petabit',
  'Byte',
  'KiloByte',
  'Megabyte',
  'Gigabyte',
  'Terabyte',
  'Petabyte'
];

class UnitLists {
  List unitSelector(String unitSelected) {
    switch (unitSelected) {
      case 'Length':
        return lengthUnits;
      case 'Temperature':
        return temperatureUnits;
      case 'Mass':
        return massUnits;
      case 'Speed':
        return speedUnits;
      case 'Frequency':
        return frequencyUnits;
      default:
        return storageUnits;
    }
  }
}
