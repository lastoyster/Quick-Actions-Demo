import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Search'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.search, size: 100),
              const SizedBox(height: 12),
              Text(
                'Search',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
      );
}
