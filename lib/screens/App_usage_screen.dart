import 'dart:convert';
import 'dart:math' as math; // Importing 'dart:math' as math
import 'package:addiction_detection/screens/Data_manager.dart';
import 'package:flutter/material.dart';
import 'package:app_usage/app_usage.dart';
import 'package:fl_chart/fl_chart.dart';

// The rest of the code remains the same...



class AppUsageScreen extends StatefulWidget {
  @override
  _AppUsageScreenState createState() => _AppUsageScreenState();
}

class _AppUsageScreenState extends State<AppUsageScreen> {
  List<AppUsageInfo> _infos = [];
  bool _showGraph = false;
  bool _showCategoryChart = false;

  @override
  void initState() {
    super.initState();
  }

  void getUsageStats() async {
    try {
      DateTime endDate = DateTime.now();
      DateTime startDate = endDate.subtract(Duration(hours: 1));
      List<AppUsageInfo> infoList =
          await AppUsage().getAppUsage(startDate, endDate);
      setState(() => _infos = infoList);
    } on AppUsageException catch (exception) {
      print(exception);
    }
  }

  void generateGraph() {
    setState(() {
      _showGraph = true;
      _showCategoryChart = false; // Reset _showCategoryChart
    });
  }


  void generateCategoryChart() {
    setState(() {
      _showCategoryChart = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Usage Analysis'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _infos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_infos[index].appName),
                    trailing: Text(_infos[index].usage.toString()),
                  );
                },
              ),
            ),
                        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), 
                    child: ElevatedButton(
                      onPressed: generateGraph,
                      child: Text('Generate Graph'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Adjust padding as needed
                    child: ElevatedButton(
                      onPressed: generateCategoryChart,
                      child: Text('Category Wise Chart'),
                    ),
                  ),
                ),
              ],
            ),
                        
            
            if (_showGraph)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: _showCategoryChart
                      ? _buildCategoryChart()
                      : _buildAppUsageChart(),
                ),
              ),
            
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: getUsageStats,
          child: Icon(Icons.refresh_rounded),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/generate-data');
              },
              child: Text(
                'Generate Data',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppUsageChart() {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: _infos.isNotEmpty
            ? _infos
                .map((info) => info.usage.inMinutes.toDouble())
                .reduce((a, b) => a > b ? a : b) *
                1.2
            : 1,
        groupsSpace: 12,
        titlesData: FlTitlesData(
          bottomTitles: SideTitles(
            showTitles: true,
            rotateAngle: 45,
            margin: 10,
            getTitles: (double value) {
              if (value.toInt() < _infos.length) {
                return _infos[value.toInt()].appName;
              }
              return '';
            },
            
            getTextStyles: (double value) => TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
          leftTitles: SideTitles(showTitles: true),
        ),
        borderData: FlBorderData(show: false),
        barGroups: _infos.map((info) {
          return BarChartGroupData(
            x: _infos.indexOf(info),
            barRods: [
              BarChartRodData(
                y: info.usage.inMinutes.toDouble(),
                colors: [Colors.blue],
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCategoryChart() {
    // Parse data from file
    List<Map<String, dynamic>> data = _parseDataFromFile(DataManager.csvString);

    // Print parsed data for debugging
    print('Parsed Data:');
    for (var entry in data) {
      print(entry);
    }

    // Calculate category-wise durations
    Map<String, double> categoryDurations = {};
    for (var entry in data) {
      // print("entry:::");
      // print(entry);
      String category = entry['Category'];
      Duration duration = _parseDuration(entry['Duration']);
      double durationInMinutes = duration.inSeconds.toDouble();
      print('Category: $category, Duration: $durationInMinutes');
      categoryDurations[category] = (categoryDurations[category] ?? 0) + durationInMinutes;
    }

    // Filter out sections with zero or negative values
    categoryDurations.removeWhere((key, value) => value <= 0);

    // If all sections have zero or negative values, display a message
    if (categoryDurations.isEmpty) {
      return Center(
        child: Text(
          'No data available for pie chart.',
          style: TextStyle(fontSize: 16),
        ),
      );
    }

    // Create pie chart
    return PieChart(
      PieChartData(
        sections: categoryDurations.entries
            .map((entry) => PieChartSectionData(
                  color: _getRandomColor(),
                  value: entry.value,
                  title: '${entry.key}',
                  radius: 50,
                  titleStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ))
            .toList(),
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
    int seconds = int.parse(parts[2].split('.')[0]); // Handling milliseconds
    // print("Duration::::");
    //   print(Duration(hours: hours, minutes: minutes, seconds: seconds));
    return Duration(hours: hours, minutes: minutes, seconds: seconds);
  }


  Color _getRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }
}

