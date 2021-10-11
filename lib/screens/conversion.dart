import 'package:flutter/material.dart';

//custom import
import 'package:simple_converter/classes/icons_button.dart' as icon_button;

//imported screens
import 'package:simple_converter/screens/length_conversion.dart';
import 'package:simple_converter/screens/temperature_conversion.dart';
import 'package:simple_converter/screens/mass_conversion.dart';
import 'package:simple_converter/screens/speed_conversion.dart';
import 'package:simple_converter/screens/frequency_conversion.dart';
import 'package:simple_converter/screens/storage_conversion.dart';

class Conversion extends StatelessWidget {
  const Conversion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Converter'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 30.0),
              child: const Text(
                'Choose measurement:',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon_button.IconButton(
                    icon: Icons.straighten_sharp,
                    label: 'Length',
                    onTap: () {
                      debugPrint('pressed length');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              LengthConversion(unit: 'Length'),
                        ),
                      );
                    },
                  ),
                  icon_button.IconButton(
                    icon: Icons.thermostat_sharp,
                    label: 'Temperature',
                    onTap: () {
                      debugPrint('pressed temp');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              TemperatureConversion(unit: 'Temperature'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  icon_button.IconButton(
                    icon: Icons.monitor_weight_sharp,
                    label: 'Mass',
                    onTap: () {
                      debugPrint('pressed mass');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MassConversion(unit: 'Mass'),
                        ),
                      );
                    },
                  ),
                  icon_button.IconButton(
                    icon: Icons.speed,
                    label: 'Speed',
                    onTap: () {
                      debugPrint('pressed speed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SpeedConversion(unit: 'Speed'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  icon_button.IconButton(
                    icon: Icons.bolt_sharp,
                    label: 'Frequency',
                    onTap: () {
                      debugPrint('pressed frequency');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FrequencyConversion(unit: 'Frequency'),
                        ),
                      );
                    },
                  ),
                  icon_button.IconButton(
                    icon: Icons.storage_sharp,
                    label: 'Digital Storage',
                    onTap: () {
                      debugPrint('pressed storage');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              StorageConversion(unit: 'Digital Storage'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
