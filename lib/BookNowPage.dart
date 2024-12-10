import 'package:flutter/material.dart';

class BookNowPage extends StatefulWidget {
  @override
  _BookNowPageState createState() => _BookNowPageState();
}

class _BookNowPageState extends State<BookNowPage> {
  final _formKey = GlobalKey<FormState>();
  String _arrivalTime = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book Now')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Arrival Time'),
                onChanged: (value) => _arrivalTime = value,
                validator: (value) => value!.isEmpty ? 'Please enter arrival time' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Add booking logic
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Booking successful')));
                  }
                },
                child: Text('Book'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
