import 'package:flutter/material.dart';

//custom import
import 'package:simple_converter/classes/icons_button.dart' as icon_button;

class Conversion extends StatelessWidget {
  const Conversion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      print('pressed length');
                    },
                  ),
                  icon_button.IconButton(
                    icon: Icons.thermostat_sharp,
                    label: 'Temperature',
                    onTap: () {
                      print('pressed temp');
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
                      print('pressed mass');
                    },
                  ),
                  icon_button.IconButton(
                    icon: Icons.speed,
                    label: 'Speed',
                    onTap: () {
                      print('pressed speed');
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
                      print('pressed frequency');
                    },
                  ),
                  icon_button.IconButton(
                    icon: Icons.storage_sharp,
                    label: 'Digital Storage',
                    onTap: () {
                      print('pressed storage');
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
