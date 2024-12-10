import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Charging Centers')),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search Location',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  // List of search results
                  ListTile(title: Text('Charging Center 1')),
                  ListTile(title: Text('Charging Center 2')),
                  // Add more list items here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
