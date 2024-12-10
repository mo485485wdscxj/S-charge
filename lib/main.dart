import 'package:flutter/material.dart';
import 'SignUpPage.dart';
import 'LoginPage.dart';
import 'SearchPage.dart';
import 'ChooseChargingCenterPage.dart';
import 'UseNowPage.dart';
import 'BookNowPage.dart';
import 'ChargingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'S-Charge App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/signUp': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
        '/search': (context) => SearchPage(),
        '/chooseChargingCenter': (context) => ChooseChargingCenterPage(),
        '/useNow': (context) => UseNowPage(),
        '/bookNow': (context) => BookNowPage(),
        '/charging': (context) => ChargingPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to S-Charge')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signUp');
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Login'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
              child: Text('Search Charging Centers'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chooseChargingCenter');
              },
              child: Text('Choose Charging Center'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/useNow');
              },
              child: Text('Use Now (QR Code)'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bookNow');
              },
              child: Text('Book Now'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/charging');
              },
              child: Text('Charging Status'),
            ),
          ],
        ),
      ),
    );
  }
}
