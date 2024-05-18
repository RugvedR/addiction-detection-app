import 'dart:convert';
import 'package:addiction_detection/screens/Data_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class DataGeneratorPage extends StatefulWidget {
  @override
  _DataGeneratorPageState createState() => _DataGeneratorPageState();
}

class _DataGeneratorPageState extends State<DataGeneratorPage> {
  List<Map<String, dynamic>> generatedData = [];
  List<dynamic> decodedData = [];

  String responseData = '';

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    var initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOS = IOSInitializationSettings();
    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void generateData() async {
    await mockSendData();
  }

  Future<void> mockSendData() async {
    // Simulated data, mimicking the structure of the actual response from your API
    List<Map<String, dynamic>> newData = [
      {"Person": "John Doe", "Category": "Gaming", "Duration": "2:00:00"},
      {"Person": "John Doe", "Category": "Social Media", "Duration": "3:00:00"},
      {"Person": "John Doe", "Category": "Productivity", "Duration": "1:00:00"},
      {"Person": "John Doe", "Category": "Internet Browsing", "Duration": "4:00:00"},
    ];

    // Simulated API response
    List<Map<String, dynamic>> simulatedResponse = [
      {"Category": "Gaming", "Predicted_Addiction_Factor": 0},
      {"Category": "Social Media", "Predicted_Addiction_Factor": 1},
      {"Category": "Productivity", "Predicted_Addiction_Factor": 0},
      {"Category": "Internet Browsing", "Predicted_Addiction_Factor": 1},
    ];

    setState(() {
      decodedData = simulatedResponse;
      responseData = decodedData.toString();
    });

    // Check for addiction factor and show notification if needed
    for (var entry in decodedData) {
      if (entry['Predicted_Addiction_Factor'] == 1) {
        _showNotification(entry['Category']);
      }
    }
  }

  Future<void> _showNotification(String category) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'your_channel_id', 
      'your_channel_name', 
      channelDescription: 'your_channel_description', // Use named argument here
      importance: Importance.max, 
      priority: Priority.high, 
      ticker: 'ticker',
    );
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      'Addiction Alert',
      'Your addiction to $category is increasing, time to take a break from it!',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Generator'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateData,
              child: Text('Generate Data and Send POST Request'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
            SizedBox(height: 10),
            Text('Response Data:'),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(responseData),
                ),
              ),
            ),
            Text('Predicted Addiction Factors:'),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: decodedData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(decodedData[index]['Category']),
                    subtitle: Text('Addiction Factor: ${decodedData[index]['Predicted_Addiction_Factor']}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  List<Map<String, dynamic>> _parseDataFromFile(String csvString) {
    List<String> lines = csvString.split('\n');
    List<String> headers = lines[0].split(',');
    List<Map<String, dynamic>> data = [];

    for (int i = 1; i < lines.length; i++) {
      List<String> values = lines[i].split(',');
      Map<String, dynamic> entry = {};
      for (int j = 0; j < headers.length; j++) {
        entry[headers[j]] = values[j];
      }
      data.add(entry);
    }

    return data;
  }

  Duration _parseDuration(String durationString) {
    List<String> parts = durationString.split(':');
    int hours = int.parse(parts[0]);
    int minutes = int.parse(parts[1]);
    int seconds = int.parse(parts[2].split('.')[0]);
    return Duration(hours: hours, minutes: minutes, seconds: seconds);
  }
}
