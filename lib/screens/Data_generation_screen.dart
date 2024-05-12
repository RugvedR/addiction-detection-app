import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataGeneratorPage extends StatefulWidget {
  @override
  _DataGeneratorPageState createState() => _DataGeneratorPageState();
}

class _DataGeneratorPageState extends State<DataGeneratorPage> {
  List<Map<String, dynamic>> generatedData = [];
  String responseData = '';

  void generateData() async {
    // Generate data in list format
    List<Map<String, dynamic>> data = [
      {
      "Date": "15/04/2024",
      "Person": 1,
      "Category": "Social Media",
      "Duration": "0 days 00:07:17"
      },
      {
        "Date": "16/04/2024",
        "Person": 1,
        "Category": "Internet Browsing",
        "Duration": "0 days 00:03:03"
      },
      {
        "Date": "16/04/2024",
        "Person": 1,
        "Category": "Other",
        "Duration": "0 days 00:50:32"
      },
      {
        "Date": "16/04/2024",
        "Person": 1,
        "Category": "Productivity",
        "Duration": "0 days 00:05:18"
      },
      {
        "Date": "16/04/2024",
        "Person": 1,
        "Category": "Social Media",
        "Duration": "0 days 01:50:17"
      },
      // Add more data entries as needed
    ];
    await sendData(data);
  }

  Future<void> sendData(List<Map<String, dynamic>> data) async {
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:8000/predict/'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'data': data}),
      );

      print(data);

      if (response.statusCode == 200) {
        // Parse and handle the response data
        final decodedData = jsonDecode(response.body);
        setState(() {
          responseData = decodedData.toString();
        });
      } else {
        // Request failed
        print('POST request failed');
      }
    } catch (e) {
      // Handle exceptions
      print('Error: $e');
    }
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
            SizedBox(height: 80),

            ElevatedButton(
              onPressed: generateData,
              child: Text('Generate Data and Send POST Request'),
              style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Change button color
  ),
            ),
            SizedBox(height: 20),
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
          ],
        ),
      ),
    );
  }
}

// class DataGenerationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Data Generation'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Implement data generation logic and API call here
//           },
//           child: Text('Generate Data and Send POST Request'),
//         ),
//       ),
//     );
//   }
// }
