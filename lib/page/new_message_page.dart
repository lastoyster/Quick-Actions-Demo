import 'package:flutter/material.dart';

class NewMessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('New Message'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email_outlined, size: 100),
              const SizedBox(height: 12),
              Text(
                'New Message',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
      );
}
