import 'package:flutter/material.dart';
import 'package:app_usage/app_usage.dart';
import 'package:permission_handler/permission_handler.dart';

class AppUsageScreen extends StatefulWidget {
  @override
  _AppUsageScreenState createState() => _AppUsageScreenState();
}

class _AppUsageScreenState extends State<AppUsageScreen> {
  List<AppUsageInfo> _infos = [];

  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }

  
  void _requestPermissions() async {
    // Request the necessary permissions
    var status = await Permission.phone.request();
    if (status.isGranted) {
      // Permission is granted, fetch app usage data
      getUsageStats();
    } else {
      // Permission is denied, handle accordingly (show a message, etc.)
      // For simplicity, here we just print a message to the console
      print('Permission denied');
    }
  }

  void getUsageStats() async {
    try {
      DateTime endDate = DateTime.now();
      DateTime startDate = endDate.subtract(Duration(hours: 1));
      List<AppUsageInfo> infoList =
          await AppUsage().getAppUsage(startDate, endDate);
      setState(() => _infos = infoList);

      for (var info in infoList) {
        print(info.toString());
      }
    } on AppUsageException catch (exception) {
      print(exception);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('App Usage Example'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: _infos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_infos[index].appName),
            trailing: Text(_infos[index].usage.toString()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/generate-data');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
