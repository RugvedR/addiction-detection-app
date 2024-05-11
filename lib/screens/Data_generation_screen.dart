import 'dart:convert';
import 'package:flutter/material.dart';

class DataGenerationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Generation'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Implement data generation logic and API call here
          },
          child: Text('Generate Data and Send POST Request'),
        ),
      ),
    );
  }
}
