// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_converter/constants/units.dart';
import 'package:simple_converter/classes/calculation.dart';

//initialization
ConverterCalculator converterCalculator = ConverterCalculator();
UnitLists unitLists = UnitLists();

class StorageConversion extends StatefulWidget {
  StorageConversion({required this.unit});

  final String unit;

  @override
  _StorageConversionState createState() => _StorageConversionState();
}

class _StorageConversionState extends State<StorageConversion> {
  //variables
  List<DropdownMenuItem> dropdownItems = [];
  List<dynamic> list = [];
  late String firstUnit = 'Byte';
  late String secondUnit = 'Kilobyte';
  String unitHeader = '';
  late String firstValue;
  late String secondValue;
  var firstController = TextEditingController();
  var secondController = TextEditingController();

  //functions
  void createDropdownItems() {
    for (dynamic unit in storageUnits) {
      dropdownItems.add(DropdownMenuItem(
        child: Text(unit),
        value: unit,
      ));
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
                    print('firstUnit: $value');
                    setState(() {
                      firstUnit = value;
                      secondController.text = converterCalculator.convert(
                          unitOfMeasure: widget.unit,
                          input: firstValue,
                          unit1: firstUnit,
                          unit2: secondUnit);
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
                      print(secondValue);
                      firstController.text = converterCalculator.convert(
                          unitOfMeasure: widget.unit,
                          input: secondValue,
                          unit1: secondUnit,
                          unit2: firstUnit);
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
                    print('secondUnit: $value');
                    setState(() {
                      secondUnit = value;
                      secondController.text = converterCalculator.convert(
                          unitOfMeasure: widget.unit,
                          input: firstValue,
                          unit1: firstUnit,
                          unit2: secondUnit);
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
