// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_converter/constants/units.dart';
import 'package:simple_converter/classes/calculation.dart';

//initialization
ConverterCalculator converterCalculator = ConverterCalculator();
TextEditingController firstController = TextEditingController()..text = '69';

class InputPage extends StatefulWidget {
  InputPage({required this.unit});

  final String unit;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //variables
  List<DropdownMenuItem> dropdownItems = [];
  String firstUnit = 'Milimeter';
  String secondUnit = 'Centimeter';
  late String firstValue;
  late String secondValue;
  String unitHeader = '';

  //functions
  void createDropdownItems() {
    for (dynamic unit in lengthUnits) {
      dropdownItems.add(
        DropdownMenuItem(
          child: Text(unit),
          value: unit,
        ),
      );
    }
  }

  void updateUI(String unit) {
    unitHeader = unit;
    debugPrint(widget.unit);
  }

  @override
  void initState() {
    super.initState();
    createDropdownItems();
    updateUI(widget.unit);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () => Navigator.pop(context),
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
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    debugPrint(value);
                    setState(() {
                      firstValue = value;
                      firstController.text = firstValue;
                      secondValue = converterCalculator.convert(
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
                    debugPrint('firstUnit: $value');
                    setState(() {
                      firstUnit = value;
                      secondValue = converterCalculator.convert(
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
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    debugPrint(value);
                    setState(() {
                      secondValue = value;
                      firstValue = converterCalculator.convert(
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

                //Second Dropdown Button
                DropdownButton(
                  isExpanded: true,
                  iconSize: 50.0,
                  value: secondUnit,
                  items: dropdownItems,
                  onChanged: (dynamic value) {
                    debugPrint('secondUnit: $value');
                    setState(() {
                      secondUnit = value;
                      secondValue = converterCalculator.convert(
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
