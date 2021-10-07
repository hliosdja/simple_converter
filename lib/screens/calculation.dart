// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_converter/constants/units.dart';

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
              TextField(
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                onChanged: (value) => debugPrint(value),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              DropdownButton(
                isExpanded: true,
                iconSize: 50.0,
                value: firstUnit,
                items: dropdownItems,
                onChanged: (dynamic value1) {
                  debugPrint('firstUnit: $value1');
                  setState(() {
                    firstUnit = value1;
                  });
                },
              ),
              Text(
                '=',
                style: TextStyle(fontSize: 80.0),
              ),
              TextField(
                onChanged: (value) {
                  debugPrint(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              DropdownButton(
                isExpanded: true,
                iconSize: 50.0,
                value: secondUnit,
                items: dropdownItems,
                onChanged: (dynamic value2) {
                  debugPrint('secondUnit: $value2');
                  setState(() {
                    secondUnit = value2;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
