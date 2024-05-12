import 'dart:convert';
import 'package:addiction_detection/screens/App_usage_screen.dart';
import 'package:addiction_detection/screens/Data_generation_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Usage and Data Generation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AppUsageScreen(),
        '/generate-data': (context) => DataGeneratorPage(),
      },
    );
  }
}

