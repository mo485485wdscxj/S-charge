import 'package:flutter/material.dart';

class ChooseChargingCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose Charging Center')),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: Text('Charging Center 1'),
              onTap: () {
                // Handle selection
              },
            ),
            ListTile(
              title: Text('Charging Center 2'),
              onTap: () {
                // Handle selection
              },
            ),
          ],
        ),
      ),
    );
  }
}
