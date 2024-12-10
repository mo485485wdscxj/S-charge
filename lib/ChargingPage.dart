import 'package:flutter/material.dart';

class ChargingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Charging')),
      body: Center(
        child: Column(
          children: [
            Text('Charging in progress...'),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Estimated time left: 30 minutes'),
          ],
        ),
      ),
    );
  }
}
