import 'package:flutter/material.dart';

//custom screens and widgets
import 'package:simple_converter/screens/calculation.dart';
import 'package:simple_converter/screens/conversion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const Conversion(),
    );
  }
}
