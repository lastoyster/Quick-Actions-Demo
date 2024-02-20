import 'package:flutter/material.dart';

class NewEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('New Event'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_today, size: 100),
              const SizedBox(height: 12),
              Text(
                'New Event',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
      );
}
