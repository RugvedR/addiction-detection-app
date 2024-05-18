import 'dart:convert';
import 'package:addiction_detection/screens/Data_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

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
    await sendData();
  }

  Future<void> sendData() async {
    List<Map<String, dynamic>> data = _parseDataFromFile(DataManager.csvString);

    print('Parsed Data:');
    for (var entry in data) {
      print(entry);
    }

    Map<String, Duration> categoryDurations = {};

    for (var entry in data) {
      String category = entry["Category"];
      Duration duration = _parseDuration(entry["Duration"]);
      categoryDurations[category] = (categoryDurations[category] ?? Duration.zero) + duration;
    }

    List<Map<String, dynamic>> newData = [];
    for (var category in categoryDurations.keys) {
      newData.add({
        "Person": data[0]["Person"],
        "Category": category,
        "Duration": categoryDurations[category].toString()
      });
    }

    for (var entry in newData) {
      print(entry);
    }

    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/predict/'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'data': newData}),
      );

      print(newData);

      if (response.statusCode == 200) {
        decodedData = jsonDecode(response.body);
        setState(() {
          responseData = decodedData.toString();
        });

        // Check for addiction factor and show notification if needed
        for (var entry in decodedData) {
          if (entry['Predicted_Addiction_Factor'] == 1) {
            _showNotification(entry['Category']);
          }
        }

      } else {
        print('POST request failed');
      }
    } catch (e) {
      print('Error:: $e');
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
