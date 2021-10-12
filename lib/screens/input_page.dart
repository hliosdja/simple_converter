// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_converter/classes/calculation.dart';
import 'package:simple_converter/constants/dropdown_handler.dart';

//initialization
ConverterCalculator converterCalculator = ConverterCalculator();
DropdownGenerator dropdownGenerator = DropdownGenerator();

class InputPage extends StatefulWidget {
  InputPage({required this.unit});

  final String unit;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //variables
  List<DropdownMenuItem> dropdownItems = [];
  String unitHeader = '';
  late String firstUnit;
  late String secondUnit;
  late String firstValue;
  late String secondValue;
  var firstController = TextEditingController();
  var secondController = TextEditingController();

  //functions
  void createDropdownItems() {
    if (widget.unit == 'Length') {
      dropdownItems.addAll(dropdownGenerator.createLengthitems());
      firstUnit = 'Milimeter';
      secondUnit = 'Centimeter';
    } else if (widget.unit == 'Mass') {
      dropdownItems.addAll(dropdownGenerator.createMassItems());
      firstUnit = 'Miligram';
      secondUnit = 'Kilogram';
    } else if (widget.unit == 'Temperature') {
      dropdownItems.addAll(dropdownGenerator.createTemperatureItems());
      firstUnit = 'Celsius';
      secondUnit = 'Fahrenheit';
    } else if (widget.unit == 'Speed') {
      dropdownItems.addAll(dropdownGenerator.createSpeedItems());
      firstUnit = 'Foot per second';
      secondUnit = 'Meter per second';
    } else if (widget.unit == 'Frequency') {
      dropdownItems.addAll(dropdownGenerator.createFrequencyItems());
      firstUnit = 'Hertz';
      secondUnit = 'Kilohertz';
    } else if (widget.unit == 'Digital Storage') {
      dropdownItems.addAll(dropdownGenerator.createStorageItems());
      firstUnit = 'Byte';
      secondUnit = 'Kilobyte';
    }
  }

  void updateUI(String unit) {
    unitHeader = unit;
    debugPrint(widget.unit);
  }

  @override
  void initState() {
    super.initState();
    updateUI(widget.unit);
    createDropdownItems();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                dropdownItems.clear();
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            title: Text('Converter'),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text(
                    '$unitHeader Conversion',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),

                //First TextField
                TextField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      firstValue = value;
                      secondController.text = converterCalculator.convert(
                          unitOfMeasure: widget.unit,
                          input: firstValue,
                          unit1: firstUnit,
                          unit2: secondUnit);
                      secondValue = secondController.text;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),

                //First Dropdown Button
                DropdownButton(
                  isExpanded: true,
                  iconSize: 50.0,
                  value: firstUnit,
                  items: dropdownItems,
                  onChanged: (dynamic value) {
                    setState(() {
                      firstUnit = value;
                      secondController.text = converterCalculator.convert(
                          unitOfMeasure: widget.unit,
                          input: firstValue,
                          unit1: firstUnit,
                          unit2: secondUnit);
                      secondValue = secondController.text;
                    });
                  },
                ),
                Text(
                  '=',
                  style: TextStyle(fontSize: 80.0),
                ),

                //Second TextField
                TextField(
                  controller: secondController,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      secondValue = value;
                      firstController.text = converterCalculator.convert(
                          unitOfMeasure: widget.unit,
                          input: secondValue,
                          unit1: secondUnit,
                          unit2: firstUnit);
                      firstValue = firstController.text;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),

                //Second Dropdown Button
                DropdownButton(
                  isExpanded: true,
                  iconSize: 50.0,
                  value: secondUnit,
                  items: dropdownItems,
                  onChanged: (dynamic value) {
                    setState(() {
                      secondUnit = value;
                      secondController.text = converterCalculator.convert(
                          unitOfMeasure: widget.unit,
                          input: firstValue,
                          unit1: firstUnit,
                          unit2: secondUnit);
                      firstValue = firstController.text;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
